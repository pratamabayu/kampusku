<?php
/*
Utility Name: Meta Box
Utility URI: https://pratamabayu.com/projects/metabox
Author: Pratama Bayu Widagdo
Author URI: https://pratamabayu.com
Description: This is metabox utility
Version: 1.0.0
License: GNU General Public License v2 or later
License URI: <https://www.gnu.org/licenses/gpl-2.0.html>
*/

class MetaBox
{
    private $prefix = 'pb';
    private $random_string = 'metabox_1234abcd+=';
    private $data = array();

    public function __construct($data)
    {
        $this->data = $data;

        add_action('add_meta_boxes', array($this, 'add'));
        add_action('save_post', array($this, 'save'), 10, 2);
    }

    public static function build($array)
    {
        return new MetaBox($array);
    }

    function add()
    {
        add_meta_box(
            $this->data['id'], // metabox ID
            $this->data['name'], // metabox heading
            array($this, 'render'), // callback function
            $this->data['post_type'], // post type or post types in array
            isset($this->data['position']) ? $this->data['position'] : 'side', // position (normal, side, advanced)
            isset($this->data['priority']) ? $this->data['priority'] : 'default' // priority (default, low, high, core)
        );
    }

    function render($post)
    {
        wp_nonce_field($this->prefix . '_' . $this->data['id'] . $this->random_string, '_' . $this->prefix . 'nonce');

        echo '<div class="components-base-control">';
        foreach ($this->data['fields'] as $field) {
            switch ($field['type']) {
                case 'textarea': {
                        $this->renderTextareaField($field, $post);
                    }
                    break;
                case 'select': {
                        $this->renderSelectField($field, $post);
                    }
                    break;
                case 'checkbox': {
                        $this->renderCheckboxField($field, $post);
                    }
                    break;
                default: {
                        $this->renderInputField($field, $post);
                    }
                    break;
            }
        }
        echo '</div>';
    }

    function save($post_id, $post)
    {
        $nonce_name = '_' . $this->prefix . 'nonce';
        $nonce_random_string = $this->prefix . '_' . $this->data['id'] . $this->random_string;

        // nonce check
        if (!isset($_POST[$nonce_name]) || !wp_verify_nonce($_POST[$nonce_name], $nonce_random_string)) {
            return $post_id;
        }

        // check current use permissions
        $post_type = get_post_type_object($post->post_type);

        if (!current_user_can($post_type->cap->edit_post, $post_id)) {
            return $post_id;
        }

        // Do not save the data if autosave
        if (defined('DOING_AUTOSAVE') && DOING_AUTOSAVE) {
            return $post_id;
        }

        // define your own post type here
        if (is_array($this->data['post_type'])) {
            $contains_post_type = false;
            foreach ($this->data['post_type'] as $post_type)
                if ($post->post_type == $post_type) {
                    $contains_post_type = true;
                }

            if (!$contains_post_type) return $post_id;
        } else {
            if ($post->post_type != $this->data['post_type']) {
                return $post_id;
            }
        }

        foreach ($this->data['fields'] as $field) {

            $uniqueId = $this->getFieldUniqueId($field);

            if (isset($_POST[$uniqueId])) {

                $value = $_POST[$uniqueId];

                switch ($field['type']) {
                    case 'email': {
                            $value = sanitize_email($value);
                        }
                        break;
                    case 'textarea': {
                            $value = esc_textarea($value);
                        }
                        break;
                    default: {
                            $value = sanitize_text_field($value);
                        }
                        break;
                }

                update_post_meta($post_id, $uniqueId, $value);
            } else {
                delete_post_meta($post_id, $uniqueId);
            }
        }

        return $post_id;
    }

    function getFieldUniqueId($field)
    {
        return $this->data['id'] . '_' . $field['id'];
    }

    function renderInputField($field, $post)
    {
        $uniqueId = $this->getFieldUniqueId($field);
        $value = get_post_meta($post->ID, $uniqueId, true);

        echo '
        <div class="components-base-control__field">
            <label for="' . $uniqueId . '" class="components-base-control__label" style="display:inline-block; margin: 8px 0">' . $field['label'] . '</label>
            <input type="' . $field['type'] .  '" id="' . $uniqueId . '" name="' . $uniqueId . '" value="' . esc_attr($value) . '" class="components-text-control__input">
        </div>';
    }

    function renderTextareaField($field, $post)
    {
        $uniqueId = $this->getFieldUniqueId($field);
        $value = get_post_meta($post->ID, $uniqueId, true);

        echo '
        <div class="components-base-control__field">
            <label for="' . $uniqueId . '" class="components-base-control__label" style="display:inline-block; margin: 8px 0">' . $field['label'] . '</label>
            <textarea id="' . $uniqueId . '" name="' . $uniqueId . '" rows="' . $field['rows'] .  '"  class="components-textarea-control__input" style="width: 100%">' . esc_attr($value) . '</textarea>
        </div>';
    }

    function renderSelectField($field, $post)
    {
        $uniqueId = $this->getFieldUniqueId($field);
        $value = get_post_meta($post->ID, $uniqueId, true);

        echo '
        <div class="components-base-control__field">
            <label for="' . $uniqueId . '" class="components-base-control__label" style="display:inline-block; margin: 8px 0">' . $field['label'] . '</label>
            <select id="' . $uniqueId . '" name="' . $uniqueId . '" class="components-select-control__input" style="width: 87%">
                <option value="">Select ...</option>';
        foreach ($field['options'] as $option_key => $option_value) {
            echo '<option value="' . $option_key . '"' . selected($option_key, $value, false) . '>' . $option_value . '</option>';
        }
        echo  '</select></div>';
    }

    function renderCheckboxField($field, $post)
    {
        $uniqueId = $this->getFieldUniqueId($field);
        $value = get_post_meta($post->ID, $uniqueId, true);

        if (!isset($value))
            $value = isset($field['default']) ? esc_attr($field['default']) : 'no';

        echo '
        <div class="components-base-control__field" style="display:flex; align-items: center">
            <span class="components-checkbox-control__input-container" style="display:inline-block">
                <input type="' . $field['type'] . '" ' . checked(esc_attr($value), 'yes', false)  . '" id="' . $uniqueId . '" name="' . $uniqueId . '" value="yes" style="display:inline-block;margin:0">
            </span>
            <label for="' . $uniqueId . '" class="components-checkbox-control__label" style="display:inline-block; margin: 8px 0">' . $field['label'] . '</label>
        </div>';
    }
}
