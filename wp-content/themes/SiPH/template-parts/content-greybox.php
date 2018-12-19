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
	<!--div class="humming-bird"><?php echo strip_tags(get_the_excerpt(),'<p>');?></div-->
	<div class="bad-link">
		<div class="bad-link-left">
			<div class="bad-link-prop">เวลาเปิดปิด</div>
			<div class="bad-link-prop-x">
				<?php if( get_field('times') ): ?>
						<?php the_field('times'); ?>
				<?php endif; ?>
			</div>
			<div class="bad-link-prop">เบอร์โทรติดต่อ</div>
			<div class="bad-link-prop-x">
				<?php if( get_field('telephone') ): ?>
						<?php the_field('telephone'); ?>
				<?php endif; ?>
			</div>
		</div>
		<div class="bad-link-right"><a class="bad-link-box" href="#">ชั้น
			<?php if( get_field('floor') ): ?>
					<?php the_field('floor'); ?>
			<?php endif; ?>
		</a></div>

	</div>
</div>
