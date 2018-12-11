<?php
/**
 * The template for displaying all single posts and attachments
 *
 * @package WordPress
 * @subpackage SiPH
 * @since SiPH 1.0
 */

get_header(); ?>
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
			<img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/logo.png"/>
		</span>
    <nav class="mdl-navigation">
      <ul>
				<li>
					<a class="mdl-navigation__link" href="">เกี่ยวกับเรา</a>
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
  </div>
  <main class="mdl-layout__content">
    <div class="page-content">
			<!--Update Block-->
			<div class="card-board">
				<?php
				// Start the loop.
				while ( have_posts() ) : the_post();
				?>
				<div class="card-board-left">
					<div class="content-siph">
						<?php get_template_part( 'template-parts/content', 'single' );?>
					</div>
				</div>
				<div class="card-board-right">
				
				</div>
			<?php
				endwhile;
			?>
			</div>
			<!--Update Block-->
		</div>
  </main>
</div>
<?php get_footer(); ?>
