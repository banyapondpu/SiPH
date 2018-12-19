<!DOCTYPE html>
<html <?php language_attributes(); ?> class="no-js">
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="http://gmpg.org/xfn/11">
	<?php if ( is_singular() && pings_open( get_queried_object() ) ) : ?>
	<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">
	<?php endif; ?>
	<?php wp_head(); ?>
	<?php if ( is_home() ) {?>
	<link rel="stylesheet" href="<?php echo esc_url( get_template_directory_uri() ); ?>/css/material-home.css">
	<?php } else {?>
	<link rel="stylesheet" href="<?php echo esc_url( get_template_directory_uri() ); ?>/css/material.css">
	<?php }?>
	<script src="<?php echo esc_url( get_template_directory_uri() ); ?>/js/material.min.js"></script>
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<link rel="stylesheet" href="<?php echo esc_url( get_template_directory_uri() ); ?>/css/jquery.bxslider.css">
  <script src="<?php echo esc_url( get_template_directory_uri() ); ?>/js/jquery.min.js"></script>
  <script src="<?php echo esc_url( get_template_directory_uri() ); ?>/js/jquery.bxslider.min.js"></script>
</head>

<body <?php body_class(); ?>>
