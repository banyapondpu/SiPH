<?php get_header(); ?>
<div class="mdl-layout mdl-js-layout mdl-layout--fixed-drawer
            mdl-layout--fixed-header">
  	<header class="mdl-layout__header mdl-bg-header">
    	<div class="mdl-layout__header-row">
      	<div class="mdl-layout-spacer"></div>
			<!--Logo Box-->
				<div id="logocenter">
			      <img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/logocenter.png"/>
			    </div>
			<!--Logo Box-->
    	</div>
  	</header>
  	<main class="mdl-layout__content">
    <div class="page-content">
			<!-- Your content goes here -->
			<script>
			 $(document).ready(function(){
				 $('.head-section').bxSlider({
					 auto: true,
					 mode: 'horizontal',
					 speed: 1000,
					 pause: 4000,
					 infiniteLoop: true,
					 });
			 });
			 </script>
			 <!-- Your content goes here -->
			 <div class="head-section">
				<?php
					$args = array( 'post_type' => 'frontpag_highlight', 'posts_per_page' => 6 );
					$loop = new WP_Query( $args );
					while ( $loop->have_posts() ) : $loop->the_post();
						get_template_part( 'template-parts/content-front-banner', get_post_format() );
					endwhile;
				?>
			 </div>
			 <div class="grid-center">
			 <div class="mdl-grid">
				<div class="mdl-cell mdl-cell--1-col graybox">
					<a href="<?php echo esc_url( home_url( '/' ) ); ?>history/">
					<img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/ico-about.png"/>
					</a>
				</div>
				<div class="mdl-cell mdl-cell--1-col graybox">
					<a href="<?php esc_url( home_url( '/' ) );?>private-clinic/">
					<img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/ico-private-clinic.png"/>
					</a>
				</div>
				<div class="mdl-cell mdl-cell--1-col graybox">
					<a href="<?php echo esc_url( home_url( '/' ) ); ?>beverage/">
					<img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/ico-beverage.png"/>
					</a>
				</div>
				<div class="mdl-cell mdl-cell--1-col graybox">
					<a href="<?php echo esc_url( home_url( '/' ) ); ?>banking/">
					<img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/ico-banking.png"/>
					</a>
				</div>
				<div class="mdl-cell mdl-cell--1-col graybox">
					<a href="<?php echo esc_url( home_url( '/' ) ); ?>shop/">
					<img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/ico-shop.png"/>
					</a>
				</div>
				<div class="mdl-cell mdl-cell--1-col graybox">
					<a href="<?php esc_url( home_url( '/' ) );?>other/">
					<img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/ico-foods.png"/>
					</a>
				</div>
				<div class="mdl-cell mdl-cell--1-col graybox">
					<a href="<?php esc_url( home_url( '/' ) );?>contact/">
					<img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/ico-contact.png"/>
					</a>
				</div>
      		</div>
      		</div>
	</div>
	</main>
	<footer class="mdl-layout__header">
    	<div class="mdl-layout__header-row">
      	<div class="mdl-layout-spacer"></div>
			<!--Search Box-->
				<form action="" class="frm" method="get">
					<div class="frm-left"><input placeholder="ค้นหาข้อมูล" class="round-and-round" type="text" name="s" id="s"/></div>
					<div class="frm-right"><input type="submit" value="" class="telephone"/></div>
				</form>
			<!--Search Box-->
    	</div>
  	</footer>
</div>
<?php get_footer(); ?>
