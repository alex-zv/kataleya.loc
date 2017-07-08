<div class="cube-category">
    <div class="main-list cube-list">
       <?php foreach ($categories as $category) { ?>
       
        <div class="item">
            <div class="item-body">
                <p>
                   <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                </p>
                <?php if ( count($category['children']) > 0 ): ?>
                    <?php $category['children'] = array_slice($category['children'], 0, 5); ?>
                    <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                    <ul>                              
                       <?php foreach ($children as $child) { ?>
                       <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                       <?php } ?>
                    </ul>
                    <?php } ?>
                <?php endif; ?>
            </div>
        </div>
       
       <?php } ?>
    </div>

</div>