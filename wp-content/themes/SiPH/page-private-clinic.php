<?php
/* Template Name: Private-Clinic */
get_header(); ?>
<div class="mdl-layout mdl-js-layout mdl-layout--fixed-drawer
            mdl-layout--fixed-header">

  <div class="mdl-layout__drawer">
    <span class="mdl-layout-title">
			<a href="<?php echo esc_url( home_url( '/' ) ); ?>"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/logo.png"/></a>
		</span>
    <div class="left-section-main">ศูนย์รักษาโรคเฉพาะทาง</div>
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
        <div class = "mdl-grid">
          <!--
          คลินิกเบาหวาน ไทรอยด์ และ ต่อมไร้ท้อ
          คลินิกตรวจสุขภาพ
          คลินิกผู้ป่วยฉุกเฉิน
          คลินิกฟื้นฟูหัวใจ
          ศูนย์เด็ก
          ศูนย์เวชศาสตร์ฟื้นฟู
          ศูนย์เอ็กซเรย์
          ศูนย์โรคไต
          ศูนย์โรคภูมิแพ้
          ศูนย์ตา
          ศูนย์ทันตกรรม
          ศูนย์ทางเดินอาหารและตับ
          ศูนย์นรีเวช
          ศูนย์ผิวหนังและศัลยกรรมตกแต่ง
          ศูนย์มะเร็ง
          ศูนย์ศัลยกรรม
          ศูนย์หัวใจ
          ศูนย์หู คอ จมูก
          ศูนย์ออร์โรปิดิกส์
          ศูนย์อายุรกรรม
          -->
          <div class="mdl-cell mdl-cell--2-col bigbox">
          	<a href="<?php echo esc_url( home_url( '/' ) ); ?>content/clinics_and_centers/orthopedic-center"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/clinic-1.png" class="picbox"/></a>
          </div>
          <div class="mdl-cell mdl-cell--2-col bigbox">
            <a href="<?php echo esc_url( home_url( '/' ) ); ?>content/clinics_and_centers/heart-center"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/clinic-2.png" class="picbox"/></a>
          </div>
          <div class="mdl-cell mdl-cell--2-col bigbox">
            <a href="<?php echo esc_url( home_url( '/' ) ); ?>content/clinics_and_centers/heart-center"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/clinic-3.png" class="picbox"/></a>
          </div>
          <div class="mdl-cell mdl-cell--2-col bigbox">
            <a href="<?php echo esc_url( home_url( '/' ) ); ?>content/clinics_and_centers/heart-center"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/clinic-4.png" class="picbox"/></a>
          </div>
          <div class="mdl-cell mdl-cell--2-col bigbox">
            <a href="<?php echo esc_url( home_url( '/' ) ); ?>content/clinics_and_centers/heart-center"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/clinic-5.png" class="picbox"/></a>
          </div>
          <div class="mdl-cell mdl-cell--2-col bigbox">
            <a href="<?php echo esc_url( home_url( '/' ) ); ?>content/clinics_and_centers/heart-center"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/clinic-6.png" class="picbox"/></a>
          </div>
          <div class="mdl-cell mdl-cell--2-col bigbox">
            <a href="<?php echo esc_url( home_url( '/' ) ); ?>content/clinics_and_centers/heart-center"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/clinic-7.png" class="picbox"/></a>
          </div>
          <div class="mdl-cell mdl-cell--2-col bigbox">
            <a href="<?php echo esc_url( home_url( '/' ) ); ?>content/clinics_and_centers/heart-center"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/clinic-8.png" class="picbox"/></a>
          </div>
          <div class="mdl-cell mdl-cell--2-col bigbox">
            <a href="<?php echo esc_url( home_url( '/' ) ); ?>content/clinics_and_centers/heart-center"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/clinic-9.png" class="picbox"/></a>
          </div>
          <div class="mdl-cell mdl-cell--2-col bigbox">
            <a href="<?php echo esc_url( home_url( '/' ) ); ?>content/clinics_and_centers/rehabilitation-center"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/clinic-10.png" class="picbox"/></a>
          </div>
          <div class="mdl-cell mdl-cell--2-col bigbox">
            <a href="<?php echo esc_url( home_url( '/' ) ); ?>content/clinics_and_centers/x-ray-center"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/clinic-11.png" class="picbox"/></a>
          </div>
          <div class="mdl-cell mdl-cell--2-col bigbox">
            <a href="<?php echo esc_url( home_url( '/' ) ); ?>content/clinics_and_centers/heart-center"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/clinic-12.png" class="picbox"/></a>
          </div>
          <div class="mdl-cell mdl-cell--2-col bigbox">
            <a href="<?php echo esc_url( home_url( '/' ) ); ?>content/clinics_and_centers/heart-center"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/clinic-21.png" class="picbox"/></a>
          </div>
          <div class="mdl-cell mdl-cell--2-col bigbox">
            <a href="<?php echo esc_url( home_url( '/' ) ); ?>content/clinics_and_centers/heart-center"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/clinic-13.png" class="picbox"/></a>
          </div>
          <div class="mdl-cell mdl-cell--2-col bigbox">
            <a href="<?php echo esc_url( home_url( '/' ) ); ?>content/clinics_and_centers/dental-center"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/clinic-14.png" class="picbox"/></a>
          </div>
          <div class="mdl-cell mdl-cell--2-col bigbox">
            <a href="<?php echo esc_url( home_url( '/' ) ); ?>content/clinics_and_centers/heart-center"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/clinic-15.png" class="picbox"/></a>
          </div>
          <div class="mdl-cell mdl-cell--2-col bigbox">
            <a href="<?php echo esc_url( home_url( '/' ) ); ?>content/clinics_and_centers/heart-center"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/clinic-16.png" class="picbox"/></a>
          </div>
          <div class="mdl-cell mdl-cell--2-col bigbox">
            <a href="<?php echo esc_url( home_url( '/' ) ); ?>content/clinics_and_centers/heart-center"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/clinic-17.png" class="picbox"/></a>
          </div>
          <div class="mdl-cell mdl-cell--2-col bigbox">
            <a href="<?php echo esc_url( home_url( '/' ) ); ?>content/clinics_and_centers/heart-center"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/clinic-18.png" class="picbox"/></a>
          </div>
          <div class="mdl-cell mdl-cell--2-col bigbox">
            <a href="<?php echo esc_url( home_url( '/' ) ); ?>content/clinics_and_centers/general-surgery-center"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/clinic-19.png" class="picbox"/></a>
          </div>
        </div>
      </div>
			<!-- Your content goes here -->
		</div>
  </main>
</div>
<?php get_footer(); ?>
