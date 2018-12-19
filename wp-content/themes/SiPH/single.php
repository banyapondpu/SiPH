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
  
  <?php
  // Start the loop.
  while ( have_posts() ) : the_post();
    get_template_part( 'template-parts/content-inside', 'single' );
  endwhile;
  ?>

</div>
<?php get_footer(); ?>
