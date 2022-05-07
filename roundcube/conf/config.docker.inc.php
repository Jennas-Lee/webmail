<?php 
  $config['db_dsnw'] = 'mysql://roundcube:round1234!@mysql:3306/ROUNDCUBE'; 
  $config['db_dsnr'] = ''; 
  $config['default_host'] = '172.17.0.1';
  $config['default_port'] = '143';
  $config['smtp_server'] = 'tls://172.17.0.1';
  $config['smtp_port'] = '587';
  $config['temp_dir'] = '/tmp/roundcube-temp';
  $config['skin'] = 'elastic';
  $config['default_port'] = '143';
  $config['smtp_server'] = 'tls://172.17.0.1';
  $config['smtp_port'] = '587';
  $config['temp_dir'] = '/tmp/roundcube-temp';
  $config['skin'] = 'elastic'; 
  $config['plugins'] = array_filter(array_unique(array_merge($config['plugins'], ['archive', 'zipdownload']))); 
  $config['smtp_conn_options'] = [ 
   'ssl'         => [ 
           'verify_peer'  => false, 
           'verify_peer_name' => 'false', 
           'allow_self_signed' => false, 
           'ssl_cert' => '/tls/cert.pem', 
           'ssl_key' => '/tls/privkey.pem', 
           'cafile' => '/tls/ca.pem',
           'ciphers' => 'TLSv1+HIGH:!aNull:@STRENGTH', 
           'peer_name' => 'mail.<DOMAIN>',

    ],
  ];