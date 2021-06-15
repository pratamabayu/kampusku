<?php

require_once("PrettyDateTime.php");

class PrettyDateTimeUtility {

    public static function parseToID(\DateTime $dateTime) {
        $result = PrettyDateTime::parse($dateTime);

        $result = str_replace('Moments ago', 'Beberapa saat lalu', $result);
        $result = str_replace('Seconds from now', 'Beberapa detik dari sekarang', $result);
        
        $result = str_replace('Yesterday', 'Kemarin', $result);
        $result = str_replace('Tomorrow', 'Besok', $result);

        $result = str_replace('second ago', 'detik yang lalu', $result);
        $result = str_replace('seconds ago', 'detik yang lalu', $result);
        $result = str_replace('seconds', 'detik', $result);
        $result = str_replace('second', 'detik', $result);
        $result = str_replace('minute ago', 'menit yang lalu', $result);
        $result = str_replace('minutes ago', 'menit yang lalu', $result);
        $result = str_replace('minutes', 'menit', $result);
        $result = str_replace('minute', 'menit', $result);
        $result = str_replace('hour ago', 'jam yang lalu', $result);
        $result = str_replace('hours ago', 'jam yang lalu', $result);
        $result = str_replace('hours', 'jam', $result);
        $result = str_replace('hour', 'jam', $result);
        $result = str_replace('day ago', 'hari yang lalu', $result);
        $result = str_replace('days ago', 'hari yang lalu', $result);
        $result = str_replace('days', 'hari', $result);
        $result = str_replace('day', 'hari', $result);
        $result = str_replace('week ago', 'minggu yang lalu', $result);
        $result = str_replace('weeks ago', 'minggu yang lalu', $result);
        $result = str_replace('weeks', 'minggu', $result);
        $result = str_replace('week', 'minggu', $result);
        $result = str_replace('month ago', 'bulan yang lalu', $result);
        $result = str_replace('months ago', 'bulan yang lalu', $result);
        $result = str_replace('months', 'bulan', $result);
        $result = str_replace('month', 'bulan', $result);
        $result = str_replace('year ago', 'tahun yang lalu', $result);
        $result = str_replace('years ago', 'tahun yang lalu', $result);
        $result = str_replace('years', 'tahun', $result);
        $result = str_replace('year', 'tahun', $result);

        $result = str_replace('In', 'Dalam', $result);
        $result = str_replace('ago', 'yang lalu', $result);

        return $result;
    }
}