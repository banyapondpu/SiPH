<?php get_header(); ?>
<div class="mdl-layout mdl-js-layout mdl-layout--fixed-drawer
            mdl-layout--fixed-header">
  <header class="mdl-layout__header">
    <div class="mdl-layout__header-row">
      <div class="mdl-layout-spacer"></div>
			<!--Search Box-->
				<form action="" class="frm" method="get">
					<div class="frm-left"><input placeholder="ค้นหาข้อมูล" class="round-and-round" type="text" name="s" id="s"/></div>
					<div class="frm-right"><input type="submit" value="" class="telephone"/></div>
				</form>
			<!--Search Box-->
    </div>
  </header>
  <div class="mdl-layout__drawer">
    <span class="mdl-layout-title">
				<a href="<?php echo esc_url( home_url( '/' ) ); ?>"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/logo.png"/></a>
		</span>
    <nav class="mdl-navigation">
      <ul>
				<li>
					<a class="mdl-navigation__link" href="#" id="demo-menu-lower-left">เกี่ยวกับเรา</a>
				</li>
				<li>
					<a class="mdl-navigation__link" href="">แผนกการให้บริการ</a>
				</li>
				<li>
					<a class="mdl-navigation__link" href="">สิ่งอำนวยความสะดวก</a>
				</li>
				<li>
					<a class="mdl-navigation__link" href="">ติดต่อเรา</a>
				</li>
			</ul>
    </nav>
    <ul class="mdl-menu mdl-menu--bottom-left mdl-js-menu mdl-js-ripple-effect "
        for="demo-menu-lower-left">
        <li class="mdl-menu__item"><a class="x-bar" href="<?php echo esc_url( home_url( '/' ) ); ?>history/">ความเป็นมา</a></li>
        <li class="mdl-menu__item"><a class="x-bar" href="<?php echo esc_url( home_url( '/' ) ); ?>logo/">ตราสัญลักษณ์</a></li>
        <li class="mdl-menu__item"><a class="x-bar" href="<?php echo esc_url( home_url( '/' ) ); ?>management/">ผู้บริหาร</a></li>
        <li class="mdl-menu__item"><a class="x-bar" href="<?php echo esc_url( home_url( '/' ) ); ?>vision/">วิสัยทัศน์</a></li>
    </ul>
  </div>
  <main class="mdl-layout__content">
    <div class="page-content">
			<!-- Your content goes here -->
			<!--Slider-->
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
			 <div class="head-section">
						<?php
							$args = array( 'post_type' => 'frontpag_highlight', 'posts_per_page' => 6 );
							$loop = new WP_Query( $args );
							while ( $loop->have_posts() ) : $loop->the_post();
								get_template_part( 'template-parts/content-header', get_post_format() );
							endwhile;
						?>
			 </div>
			<!--Slider-->
			<!--SiPH Update-->
			<div class="header-section">
				<div class="header-section-left"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/siphbullet.png"/>SiPH Update</div>
				<div class="header-section-right"></div>
			</div>
			<!--SiPH Update-->
			<!--Update Block-->
			<div class="mdl-grid">
				<?php
					$args = array( 'cat' => 2, 'posts_per_page' => 4 );
					$loop = new WP_Query( $args );
					while ( $loop->have_posts() ) : $loop->the_post();
						get_template_part( 'template-parts/content-greybox', get_post_format() );
					endwhile;
				?>
      </div>
			<!--Update Block-->
		</div>
  </main>
</div>
<?php get_footer(); ?>
