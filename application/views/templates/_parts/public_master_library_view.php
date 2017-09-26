    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <meta name="theme-color" content="#3FB871">  <!-- Chrome, Firefox OS and Opera -->
    <meta name="msapplication-navbutton-color" content="#3FB871"> <!-- Windows Phone -->
    <meta name="apple-mobile-web-app-capable" content="yes"> <!-- iOS Safari -->
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent"> <!-- iOS Safari -->

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <link href="<?php echo $website->favicon; ?>" rel="shortcut icon" type="image/x-icon" />
    <meta http-equiv="content-language" content="vi" />
    <meta name="description" content="<?php echo $website->meta_description; ?>" />
    <meta name="keywords" content="<?php echo $website->meta_keyword; ?>" />
    <meta name="robots" content="noodp,index,follow" />
    <meta name='revisit-after' content='1 days' />
    <!-- facebook share content -->
    <meta property="og:locale" content="vi_VN">
    <meta property="og:type"               content="website" />       
    <meta property="og:title"         content="<?php echo $website->title; ?>" />
    <meta property="og:description"   content="<?php echo $website->meta_description; ?>" />
    <meta property="og:url"           content="<?php echo base_url().$_SERVER['REQUEST_URI']; ?>" />

    <meta name="twitter:card"         content="summary">
    <meta name="twitter:description"  content="<?php echo $website->meta_description; ?>">
    <meta name="twitter:title"        content="<?php echo $website->title; ?>">

    <title><?php echo $website->title; ?></title>
    <!-- CSS -->
    <link rel="stylesheet" href="<?php echo public_helper('lib/bootstrap/css/bootstrap.min.css'); ?>"/>
    <link rel="stylesheet" href="<?php echo public_helper('lib/font-awesome/css/font-awesome.min.css'); ?>"/>
    <link rel="stylesheet" href="<?php echo public_helper('owlcarousel/owl.carousel.min.css'); ?>"/>
    <link rel="stylesheet" href="<?php echo public_helper('owlcarousel/owl.theme.green.css'); ?>"/>
    <!-- <link rel="stylesheet" href="<?php echo public_helper('lib/bootstrap/css/bootstrap-glyphicons.css'); ?>"/> -->
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo public_helper('css/animate.css'); ?>"/>
    <link rel="stylesheet" href="<?php echo public_helper('css/style.css'); ?>"/>

    <!-- Javascript -->
    <script type="text/javascript" src="<?php echo public_helper("lib/jquery/jquery.min.js"); ?>"></script>
    <script type="text/javascript" src="<?php echo public_helper('lib/bootstrap/js/bootstrap.min.js'); ?>"></script>
    <script type="text/javascript" src="<?php echo public_helper("owlcarousel/owl.carousel.min.js"); ?>"></script>