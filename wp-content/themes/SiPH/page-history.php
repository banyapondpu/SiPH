<?php
/* Template Name: History */
get_header(); ?>
<div class="mdl-layout mdl-js-layout mdl-layout--fixed-drawer
            mdl-layout--fixed-header">

  <div class="mdl-layout__drawer">
    <span class="mdl-layout-title">
			<a href="<?php echo esc_url( home_url( '/' ) ); ?>"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/logo.png"/></a>
		</span>
    <nav class="mdl-navigation">
      <ul>
				<li>
					<a class="mdl-navigation__link" href="<?php echo esc_url( home_url( '/' ) ); ?>history/">ความเป็นมา</a>
				</li>
				<li>
					<a class="mdl-navigation__link" href="<?php echo esc_url( home_url( '/' ) ); ?>logo/">สัญลักษณ์</a>
        </li>

				<li>
					<a class="mdl-navigation__link" href="">วิสัยทัศน์ และพันธกิจ</a>
				</li>
			</ul>
    </nav>
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
        <?php get_template_part( 'template-parts/content-page', 'page' );?>
      </div>
			<!-- Your content goes here -->
		</div>
  </main>
</div>
<?php get_footer(); ?>
