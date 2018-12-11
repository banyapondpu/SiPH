<?php
/**
 * The template part for displaying single posts
 *
 * @package WordPress
 * @subpackage SiPH
 * @since SiPH 1.0
 */
?>
<div class="mdl-cell mdl-cell--3-col graybox">
	<h1 class="head-topic"><?php the_title();?></h1>
	<div class="galley-box"><?php twentysixteen_post_thumbnail(); ?></div>
	<div class="humming-bird"><?php echo strip_tags(get_the_excerpt(),'<p>');?></div>
	<div class="bad-link">
		<a class="bad-link-box" href="<?php the_permalink();?>">อ่านเพิ่มเติม</a>
	</div>
</div>
