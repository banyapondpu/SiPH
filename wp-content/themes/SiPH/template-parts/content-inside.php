<div class="mdl-layout__drawer">
  <span class="mdl-layout-title">
    <img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/logo.png"/>
  </span>
    <div class="left-section-main">ศูนย์รักษาโรคเฉพาะทาง</div>
  <nav class="mdl-navigation">
    <ul>
      <li>
        <a class="mdl-navigation__link" href=""><?php the_title();?></a>
      </li>
    </ul>
    <div class="end-button">
      <a href="<?php echo esc_url( home_url( '/' ) ); ?>private-clinic" class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored backbutton">
        กลับสู่หน้าที่แล้ว
      </a>
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
  </nav>
</div>
<main class="mdl-layout__content">
  <div class="page-content">
    <!--Update Block-->
    <div class="article-box">
      <div class="article-box-left">
        <?php $attachment = get_children(
                array(
                    'post_parent'    => get_the_ID(),
                    'post_type'      => 'attachment',
                    'post_mime_type' => 'image',
                    'order'          => 'ASC',
                    'numberposts'    => 1,
                )
            );
            if ( ! is_array( $attachment ) || empty( $attachment ) ) {
                return;
            }
            $attachment = current( $attachment );
            $img_detail=wp_get_attachment_url( $attachment->ID,'full');
            ?>
            <img src="<?php echo $img_detail;?>" class="article-img"/>
            <div class="article-section">
              <div class="article-time-head"></div>
              <?php if( get_field('times') ): ?>
                  <p class="article-slide-txt"><?php the_field('times'); ?></p>
              <?php endif; ?>
              <div class="article-location-head"></div>
              <?php if( get_field('locations') ): ?>
                  <p class="article-slide-txt"><?php the_field('locations'); ?></p>
              <?php endif; ?>
              <div class="article-contact-head"></div>
              <?php if( get_field('contact_point') ): ?>
                  <p class="article-slide-txt"><?php the_field('contact_point'); ?></p>
              <?php endif; ?>
            </div>
      </div>
      <div class="article-box-right">
          <h1 class="re-title"><?php the_title();?></h1>
          <?php if( get_field('detail') ): ?>
              <p><?php the_field('detail'); ?></p>
          <?php endif; ?>
          <?php if( get_field('floor_plan') ): ?>
              <p><img src="<?php the_field('floor_plan'); ?>" class="article-cover"/></p>
          <?php endif; ?>
      </div>
    </div>
    <!--Update Block-->
  </div>
</main>
