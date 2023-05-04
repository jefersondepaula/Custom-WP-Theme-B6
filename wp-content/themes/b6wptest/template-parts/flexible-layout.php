
<?php if (get_field("flexible_layout")) : ?>

    <?php while (has_sub_field("flexible_layout")) : ?>    
        <!-- Main Home Slider -->
        <?php if (get_row_layout() == "hero_header") : ?>  
            <section class="slider">
                <?php if (have_rows('hero_slider')) : ?>      
                    <div class="swiper mySwiper">
						<div class="swiper-wrapper"> 
                        <?php while (have_rows('hero_slider')) : the_row(); ?>
                            <div class="swiper-slide">
                                <div class="container">
                                
                                    <div class="hero-slider-content">
                                        <?php if (get_sub_field('slider_subtitle')): ?>
                                            <p><?=get_sub_field('slider_subtitle');?></p>
                                        <?php endif;?>

                                        <?php if (get_sub_field('slider_title')): ?>
                                            <h1><?=get_sub_field('slider_title');?></h1>
                                        <?php endif;?>

                                        <?php if (get_sub_field('slider_description')): ?>
                                            <p><?=get_sub_field('slider_description');?></p>
                                        <?php endif;?>
                                    </div>
                                </div>  
                                <!-- background slider image -->
                                <?php if (get_sub_field('slider_image')): ?>
                                    <div class="hero-slider-image" style="background-image: url(<?=get_sub_field('slider_image')?>);"></div>
                                <?php endif;?>
                            </div>                        
                        <?php endwhile;?>
                        </div>
                        <div class="swiper-pagination"></div>
                    </div>
                <?php endif;?>  
            </section>             
        <?php endif;?>       
    <?php endwhile;?>
<?php endif; ?>