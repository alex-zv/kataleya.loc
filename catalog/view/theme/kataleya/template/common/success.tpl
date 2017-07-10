<?php echo $header; ?>
<div class="page-wrap">
  <ul class="breadcrumb cube">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
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

    <div><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>
      <?php echo $text_message; ?>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php echo $content_bottom; ?></div>
  </div>
  <?php echo $column_right; ?>
</div>
<?php echo $footer; ?>