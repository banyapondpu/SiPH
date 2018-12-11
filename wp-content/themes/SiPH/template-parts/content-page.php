<?php
/**
 * The template used for displaying page content
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */
?>
<div class="card-board">

		<div class="bold-title"><?php the_title();?></div>
		<div class="bold-sub-title">
			<?php if ( has_post_thumbnail() ) : ?>
				<a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>">
					<img src="<?php the_post_thumbnail_url(); ?>" class="cover-page"/>
				</a>
			<?php endif; ?>
		</div>
		<div class="content-siph">
			<?php
			    $pageid = get_the_id();
			    $content_post = get_post($pageid);
			    $content = $content_post->post_content;
			    $content = apply_filters('the_content', $content);
			    $content = str_replace(']]>', ']]&gt;', $content);
			    echo $content;
			?>
		</div>


</div>
