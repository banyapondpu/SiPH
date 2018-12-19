<?php
/* Template Name: Shop */
get_header(); ?>
<div class="mdl-layout mdl-js-layout mdl-layout--fixed-drawer
            mdl-layout--fixed-header">
  
  <div class="mdl-layout__drawer">
    <span class="mdl-layout-title">
			<a href="<?php echo esc_url( home_url( '/' ) ); ?>"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/logo.png"/></a>
		</span>
    <div class="left-section-main">ร้านค้า</div>
  </div>
  <main class="mdl-layout__content">
    <div class="page-content">
			<!-- Your content goes here -->
      <div class="content-siph">
        <?php get_template_part( 'template-parts/content-page', 'page' );?>
      </div>
			<!-- Your content goes here -->
		</div>
  </main>
</div>
<?php get_footer(); ?>
