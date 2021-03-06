<?php
$sMetadataVersion = '2.1';
$aModule          = [
    'id'          => 'ivoba_google_tag_manager',
    'title'       => '<strong>Ivo Bathke</strong>:  <i>Google Tag Manager</i>',
    'description' => '',
    'thumbnail'   => 'ivoba-oxid.png',
    'version'     => '1.1.4',
    'author'      => 'Ivo Bathke',
    'email'       => 'ivo.bathke@gmail.com',
    'url'         => 'https://oxid.ivo-bathke.name#google-tag-manager',
    'extend'      => [
    ],
    'blocks'      => [
        [
            'template' => 'layout/base.tpl',
            'block'    => 'head_meta_robots',
            'file'     => 'views/blocks/tag_manager_order_products.tpl',
            'position' => '2'
        ],
        [
            'template' => 'layout/base.tpl',
            'block'    => 'head_meta_robots',
            'file'     => '/views/blocks/tag_manager_script.tpl',
            'position' => '1'
        ],
        [
            'template' => 'layout/base.tpl',
            'block'    => 'theme_svg_icons',
            'file'     => '/views/blocks/tag_manager_noscript.tpl'
        ]
    ],
    'settings'    => [
        [
            'group' => 'ivoba_google_tag_manager',
            'name'  => 'ivoba_google_tag_manager_id',
            'type'  => 'str',
            'value' => 'GTM-*****',
        ],
        [
            'group' => 'ivoba_google_tag_manager',
            'name'  => 'ivoba_google_tag_manager_order_event',
            'type'  => 'str',
            'value' => 'OrderEvent',
        ]

    ],
    'events'      => [],
];
