<?php
/**
 * The template part for displaying single posts
 *
 * @package WordPress
 * @subpackage SiPH
 * @since SiPH 1.0
 */
?>

<div class="graybox-brance">
	<div class="graybox-left">
		<div class="graybox-img"><?php the_post_thumbnail( 'large' );  ?></div>
	</div>
	<div class="graybox-right">
		<h1 class="head-topic-x"><?php the_title();?></h1>
		<div class="graybox-phead">ชั้นที่บริการ</div>
		<div class="graybox-value"><?php if( get_field('floor') ): ?>
						ชั้น <?php the_field('floor'); ?>
				<?php endif; ?></div>
		<div class="graybox-phead">เปิดบริการ</div>
		<div class="graybox-value"><?php if( get_field('times') ): ?>
						<?php the_field('times'); ?>
				<?php endif; ?></div>
		<div class="graybox-phead">เบอร์ติดต่อ</div>
		<div class="graybox-value"><?php if( get_field('telephone') ): ?>
						<?php the_field('telephone'); ?>
				<?php endif; ?></div>
	</div>
</div>
