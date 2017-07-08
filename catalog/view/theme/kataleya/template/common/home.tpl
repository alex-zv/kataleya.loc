<?php echo $header; ?>

    <div class="page-wrap clearfix">
        
        
        
        <div style="position: relative;">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Открыть
                
            </a>
            <ul class="dropdown-menu pull-right">
                <li><a href="">Lorem5</a></li>
                <li><a href="">Lorem5</a></li>
                <li><a href="">Lorem5</a></li>
                <li><a href="">Lorem5</a></li>
                <li><a href="">Lorem5</a></li>
            </ul>
        </div>
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
        <div id="content" class="<?php echo $class; ?>">
            <?php echo $content_top; ?>
            
            <?php echo $content_bottom; ?>      
        </div>
        <?php echo $column_right; ?>
        
    </div>  
    
</div>
<?php echo $footer; ?>