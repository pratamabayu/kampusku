<main>
    <section class="margin-large margin-remove-horizontal margin-remove-top">
        <?php get_template_part('template-parts/section/section-hero'); ?>
    </section>
    <section class="margin-large grid grid-4-columns grid-2-columns@m grid-1-columns@s grid-column-gap-medium grid-column-row-small">
        <section>
            <a href="/jurusan-seni-rupa/s1-seni-rupa" class="margin-small display-block animation-grow-on-hover height-auto" style="--animation-duration: .2s; --animation-delay: .1s">
                <div class="card card-primary box-shadow-xlarge height-1/1">
                    <div class="card-header">
                        <h1 class="text-center">16</h1>
                        <p class="text-center">Program Studi</p>
                    </div>
                </div>
            </a>
        </section>
        <section>
            <a href="/jurnal-harmonia" class="margin-small display-block animation-grow-on-hover height-auto" style="--animation-duration: .2s; --animation-delay: .1s">
                <div class="card card-primary box-shadow-xlarge height-1/1">
                    <div class="card-header">
                        <h1 class="text-center">18</h1>
                        <p class="text-center">Jurnal</p>
                    </div>
                </div>
            </a>
        </section>
        <section>
            <a href="/english-language-teaching-literature-and-translation" class="margin-small display-block animation-grow-on-hover height-auto" style="--animation-duration: .2s; --animation-delay: .1s">
                <div class="card card-primary box-shadow-xlarge height-1/1">
                    <div class="card-header">
                        <h1 class="text-center">6</h1>
                        <p class="text-center">Prosiding & Konferensi</p>
                    </div>
                </div>
            </a>
        </section>
        <section>
            <a href="/dosen" class="margin-small display-block animation-grow-on-hover height-auto" style="--animation-duration: .2s; --animation-delay: .1s">
                <div class="card card-primary box-shadow-xlarge height-1/1">
                    <div class="card-header">
                        <h1 class="text-center">203</h1>
                        <p class="text-center">Dosen</p>
                    </div>
                </div>
            </a>
        </section>
    </section>
    <section class="margin-large grid grid-4-columns grid-1-columns@m grid-column-gap-medium grid-column-row-small">
        <section class="column-span-3 column-span-1@m">
            <?php $welcome_page = get_page_by_path('sambutan-dekan'); ?>
            <?php if ($welcome_page->post_content) : ?>
            <section>
                <div class="margin-large margin-remove-horizontal margin-remove-top">

                    <div class="flex align-items-center justify-content-between">
                        <div>
                            <h4>Selamat datang</h4>
                        </div>
                        <div><a href="/sambutan-dekan" class="button">Selengkapnya ...</a></div>
                    </div>
                    <div>
                        <p><?= str_replace('[&hellip;]', '...', get_the_excerpt($welcome_page)); ?></p>
                    </div>
                </div>
            </section>
            <?php endif; ?>
            <?php get_template_part(
                'template-parts/section/section-latest-posts-as-card',
                null,
                array(
                    'heading' => 'Kabar kampus terkini',
                    'category_name' => 'kabar-kampus',
                    'numberposts' => 4
                )
            ); ?>
            <?php get_template_part(
                'template-parts/section/section-latest-posts-as-card',
                null,
                array(
                    'heading' => 'Publikasi terkini',
                    'category_name' => 'publikasi',
                    'numberposts' => 4
                )
            ); ?>
            <?php get_template_part(
                'template-parts/section/section-latest-posts-as-card',
                null,
                array(
                    'heading' => 'Pitutur terkini',
                    'category_name' => 'pitutur',
                    'numberposts' => 2
                )
            ); ?>
        </section>
        <aside>
            <div class="margin-large@m margin-remove-horizontal@m margin-remove-top@m"></div>
            <?php get_template_part(
                'template-parts/section/section-latest-events-as-aside',
                null,
                array(
                    'heading' => 'Agenda terdekat',
                    'post_type' => 'events'
                )
            ); ?>
            <?php get_template_part(
                'template-parts/section/section-latest-posts-as-aside',
                null,
                array(
                    'heading' => 'Lowongan terkini',
                    'category_name' => 'lowongan'
                )
            ); ?>
        </aside>
    </section>
</main>