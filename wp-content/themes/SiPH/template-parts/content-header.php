<?php
/**
 * The template part for displaying single posts
 *
 * @package WordPress
 * @subpackage SiPH
 * @since SiPH 1.0
 */
?>
<div class="card-board">
	<div class="card-board-left">
		<div class="bold-title"><?php the_title();?></div>
		<div class="bold-sub-title"><?php echo strip_tags(get_the_excerpt(),'<p>');?></div>
		<div class="content-siph"><?php echo strip_tags(get_the_content(),'<p>');?></div>
	</div>
	<div class="card-board-right">
		<?php if ( has_post_thumbnail() ) : ?>
			<a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>">
				<img src="<?php the_post_thumbnail_url(); ?>"/>
			</a>
		<?php endif; ?>
	</div>
</div>
