<?php echo $header; ?>
<div class="page-wrap">
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
    <ul class="breadcrumb cube">
      <?php foreach ($breadcrumbs as $breadcrumb) { ?>
      <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
      <?php } ?>
    </ul>

    <?php echo $content_top; ?>
    <div class="article cube">
      <h1><?php echo $heading_title; ?></h1>
      <div class="content clearfix">
        <?php echo $description; ?>
      </div>
    </div>
      <?php echo $content_bottom; ?>
  </div>
  
  <?php echo $column_right; ?>
</div>
<?php echo $footer; ?>