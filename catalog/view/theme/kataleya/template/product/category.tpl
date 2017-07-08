<?php echo $header; ?>
<div class="page-wrap category-page clearfix">
  

    <?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-2'; ?>
    <?php } elseif ($column_left) { ?>
    <?php $class = 'col-l'; ?>
    <?php } elseif ($column_right) { ?>
    <?php $class = 'col-r'; ?>
    <?php } else { ?>
    <?php $class = 'col-0'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
        <ul class="breadcrumb cube">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
            <?php } ?>
        </ul>
      
      <div class="cube top-block">
          <h1><?php echo $heading_title; ?></h1>
      
      <?php if ($thumb || $description) { ?>
        <div class="row">
            <?php if ($thumb) { ?>
            <div class="image"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" /></div>
            <?php } ?>
            <?php if ($description) { ?>
            <div class="text"><?php echo $description; ?></div>
            <?php } ?>
        </div>
      <?php } ?>
      
      <?php if ($categories) { ?>
      
      <?php if (count($categories) <= 5) { ?>
        <div class="row">
            <h3><?php echo $text_refine; ?></h3>
            <ul>
                <?php foreach ($categories as $category) { ?>
                <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                <?php } ?>
            </ul>

        </div>
      <?php } else { ?>
        <div class="row">
            <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
            <div class="col-sm-3">
              <ul>
                <?php foreach ($categories as $category) { ?>
                <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                <?php } ?>
              </ul>
            </div>
            <?php } ?>
        </div>
      <?php } ?>
      <?php } ?>
      <?php if ($products) { ?>
        <div class="row item-wrap">

            <div class="item">
              <div class="form-group">
                <a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a>
              </div>
            </div>
            <div class="item">
              <div class="form-group input-group input-group-sm">
                <label class="input-group-addon" for="input-sort"><?php echo $text_sort; ?></label>
                <select id="input-sort" class="form-control" onchange="location = this.value;">
                  <?php foreach ($sorts as $sorts) { ?>
                  <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                  <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select>
              </div>
            </div>
            <div class="item">
              <div class="form-group input-group input-group-sm">
                <label class="input-group-addon" for="input-limit"><?php echo $text_limit; ?></label>
                <select id="input-limit" class="form-control" onchange="location = this.value;">
                  <?php foreach ($limits as $limits) { ?>
                  <?php if ($limits['value'] == $limit) { ?>
                  <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select>
              </div>
            </div>
        </div>
        </div>
        <!-- CUSTOM CATEGORY -->
        <div class="product-list">
            <div class="cube-list">
                <?php foreach ($products as $product) { ?>
                <div class="item">
                    <div class="over-wrap">
                        <div class="item-body prod-thumb">
                            
                        
                            <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>
                            </div>                                        
                            <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                            <?php if ($product['price']) { ?>
                                <div class="price">
                                    <?php if (!$product['special']) { ?>
                                    <?php echo $product['price']; ?>
                                    <?php } else { ?>
                                    <div class="price-new"><?php echo $product['special']; ?></div>
                                    <div class="price-old"><?php echo $product['price']; ?></div>
                                     
                                    <?php } ?>
                                    <?php if ($product['tax']) { ?>
                                    <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                                    <?php } ?>
                                </div>
                            <?php } ?>

                            <div class="button-group">
                                <button type="button" class="cart-btn" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
                                <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
                                <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
                            </div>
                            
                            
                            
                            
                            <div class="info">
                                <?php if ($product['sku']) { ?>
                                    <p>Артикул: <?php echo $product['sku']; ?></p>
                                <?php } ?>
                                <?php if ($product['width'] != 0 && $product['length'] != 0 && $product['height'] != 0){ ?>
                                    <p>Размер: <?php echo round($product['width'], 2).'x'.round($product['length'], 2).'x'.round($product['height'], 2).'h'; ?></p>
                                <?php } ?>
                                <p><?php echo $product['description']; ?></p>
                            </div>
                            
                            
                        </div>
                    </div>
                </div>
                <?php } ?>
            </div>
        </div>
        <!-- CUSTOM CATEGORY -->
      <div class="cube pagination-wrap">
        <div><?php echo $pagination; ?></div>
        <div class="result"><?php echo $results; ?></div>
      </div>
      <?php } ?>
      <?php if (!$categories && !$products) { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
        <?php echo $content_bottom; ?></div>
        <?php echo $column_right; ?>
</div>
<?php echo $footer; ?>
