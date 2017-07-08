<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta property="og:title" content="<?php echo $title; ?>" />
<meta property="og:type" content="website" />
<meta property="og:url" content="<?php echo $og_url; ?>" />
<?php if ($og_image) { ?>
<meta property="og:image" content="<?php echo $og_image; ?>" />
<?php } else { ?>
<meta property="og:image" content="<?php echo $logo; ?>" />
<?php } ?>
<meta property="og:site_name" content="<?php echo $name; ?>" />
<link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,700&subset=cyrillic" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,400i,700|Roboto+Slab&amp;subset=cyrillic" rel="stylesheet">
<link href="catalog/view/theme/kataleya/stylesheet/stylesheet.css" rel="stylesheet">
<link href="catalog/view/theme/kataleya/stylesheet/style.css" rel="stylesheet">
<!-- <script src="catalog/view/theme/kataleya/js/custom_bootstrap.js" type="text/javascript"></script> -->
<script src="catalog/view/theme/kataleya/js/scripts.js" type="text/javascript"></script>


<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">
<nav id="top">
  <div class="container">
   
    <?php echo $currency; ?>
    <?php echo $language; ?>
    <div id="top-links" class="nav pull-right">
      <ul class="list-inline">
        <li><a href="<?php echo $contact; ?>"><i class="fa fa-phone"></i></a> <span class="hidden-xs hidden-sm hidden-md"><?php echo $telephone; ?></span></li>
        <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="caret"></span></a>
          <ul class="dropdown-menu dropdown-menu-right">
            <?php if ($logged) { ?>
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
            <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
            <?php } else { ?>
            <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
            <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
            <?php } ?>
          </ul>
        </li>
        <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a></li>
        <li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_shopping_cart; ?></span></a></li>
        <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_checkout; ?></span></a></li>
      </ul>
    </div>
  </div>
</nav>
<header>
    <div class="wrapper">
       <div class="header-top">
            <div id="logo">
              <?php if ($logo) { ?>
                <?php if ($home == $og_url) { ?>
                  <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" />
                <?php } else { ?>
                  <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
                <?php } ?>
              <?php } else { ?>
                <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
              <?php } ?>
            </div>
            <div class="srch-form cube">
               <?php echo $search; ?>
            </div>  

            <div class="header-contacts cube">
                <div class="wrap">
                    <?php 
                        $telephone = explode(',', $telephone);
                        foreach ($telephone as $tel) {
                            $tel = trim($tel);
                            echo '<p><span>'.$tel.'</span></p>';
                        }
                    ?>
                    <p><a href="mailto:<?php echo $email; ?>"><?php echo $email; ?></a></p>
                </div>
                
            </div>
       </div>      

       <div class="header-bottom clearfix">
           <nav>
               <ul>
                   <li class="cube">
                       <a href="#">Главная</a>
                   </li>
                   <li class="cube" id="catalog-item">
                       <a href="#">Каталог</a>
                       <ul style="display: none;">
                         <?php foreach ($categories as $category) { ?>
                         <?php if ($category['children']) { ?>
                         <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
                           <div class="dropdown-menu">
                             <div class="dropdown-inner">
                               <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                               <ul class="list-unstyled">
                                 <?php foreach ($children as $child) { ?>
                                 <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                                 <?php } ?>
                               </ul>
                               <?php } ?>
                             </div>
                             <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
                         </li>
                         <?php } else { ?>
                         <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                         <?php } ?>
                         <?php } ?>
                       </ul>
                   </li>
                   <li class="cube">
                       <a href="#">Галерея</a>
                   </li>
                   <li class="cube">
                       <a href="http://kataleya.loc/index.php?route=information/information&information_id=6">Доставка и оплата</a>
                   </li>
                   <li class="cube">
                       <a href="http://kataleya.loc/index.php?route=information/information&information_id=4">О нас</a>
                   </li>
                   <li class="cube">
                       <a href="http://kataleya.loc/index.php?route=information/information&information_id=8">Контакты</a>
                   </li>
               </ul>
            </nav>
           
            <?php echo $cart; ?>
          
        </div>
    </div>
          
</header>
