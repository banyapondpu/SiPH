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
		<a class="bad-link-box">ชั้น
			<?php if( get_field('floors') ): ?>
			   <?php the_field('floors'); ?>
			<?php endif; ?>
		</a>
		<a class="bad-link-box-open-time">เวลาเปิดปิด
			<?php if( get_field('open_time') ): ?>
			   <?php trim(the_field('open_time')); ?>
			<?php endif; ?>
		</a>
		<span class="humming-bird">เบอร์โทรติดต่อ:
			<?php if( get_field('telephone') ): ?>
				 <?php the_field('telephone'); ?>
			<?php endif; ?>
		</span>
	</div>
</div>
