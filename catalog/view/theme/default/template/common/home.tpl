<?php echo $header; ?>

    <div class="content_main clearfix">
        <div class="sidebar"></div>
        <div class="container clearfix">
            <!-- <div class="item">
                <div class="item-body">
                    
                    <ul>
                        <li>
                            <a href="#">Эконом</a>
                        </li>
                        <li>
                            <a href="#">Премиумa</a>
                        </li>
                    </ul>
                </div>
            </div> -->
           <?php print_r($categories) ?>
            <!-- <?php foreach ($categories as $category) { ?>
            
            <div class="item">
                <div class="item-body">
                    <p>
                        <a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>>
                    </p>
                    <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                    <ul>
                        <?php foreach ($children as $child) { ?>
                        <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                        <?php } ?>
                    </ul>
                    <?php } ?>
              
                </div>
            </div>
            
            <?php } ?> -->
        </div>
    </div>  
    
</div>
<?php echo $footer; ?>