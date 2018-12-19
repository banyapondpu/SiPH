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
    <div class="end-button">

      <a href="<?php echo esc_url( home_url( '/' ) ); ?>" class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored backbutton">
        กลับสู่หน้าหลัก
      </a>
    </div>
    <div class="spot-light">
      <form name="s" method="get">
        <div class="frm-left"><input placeholder="ค้นหาข้อมูล" class="round-and-round" type="text" name="s" id="s"/></div>
        <div class="frm-right"><input type="submit" value="" class="spot-search"/></div>
      </form>
    </div>
  </div>
  <main class="mdl-layout__content">
    <div class="page-content">
			<!-- Your content goes here -->
      <div class="content-siph">
        <!--Update Block-->
  			<div class="mdl-grid">
  				<?php
  					$args = array( 'cat' => 3, 'posts_per_page' => 18 );
  					$loop = new WP_Query( $args );
  					while ( $loop->have_posts() ) : $loop->the_post();
  						get_template_part( 'template-parts/content-greybox', get_post_format() );
  					endwhile;
  				?>
        </div>
  			<!--Update Block-->
      </div>
			<!-- Your content goes here -->
		</div>
  </main>
</div>
<?php get_footer(); ?>
