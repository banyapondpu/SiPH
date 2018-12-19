<?php
/**
 * The template for displaying archive pages
 *
 * Used to display archive-type pages if nothing more specific matches a query.
 * For example, puts together date-based pages if no date.php file exists.
 *
 * If you'd like to further customize these archive views, you may create a
 * new template file for each one. For example, tag.php (Tag archives),
 * category.php (Category archives), author.php (Author archives), etc.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */

get_header(); ?>

<div class="mdl-layout mdl-js-layout mdl-layout--fixed-drawer
            mdl-layout--fixed-header">
<?php if ( have_posts() ) : ?>
  <div class="mdl-layout__drawer">
    <span class="mdl-layout-title">
			<a href="<?php echo esc_url( home_url( '/' ) ); ?>"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/logo.png"/></a>
		</span>
    <div class="left-section-main"><?php echo strip_tags(get_the_archive_description());?></div>
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
					// Start the Loop.
						while ( have_posts() ) : the_post();
  						get_template_part( 'template-parts/content-greybox', get_post_format() );
  					endwhile;

						the_posts_pagination( array(
							'prev_text'          => __( 'Previous page', 'twentysixteen' ),
							'next_text'          => __( 'Next page', 'twentysixteen' ),
							'before_page_number' => '<span class="meta-nav screen-reader-text">' . __( 'Page', 'twentysixteen' ) . ' </span>',
						) );

					// If no content, include the "No posts found" template.

  				?>
        </div>
  			<!--Update Block-->
      </div>
			<!-- Your content goes here -->
		</div>
  </main>
<?php

else :
	get_template_part( 'template-parts/content', 'none' );

endif;?>
</div>
<?php get_footer(); ?>
