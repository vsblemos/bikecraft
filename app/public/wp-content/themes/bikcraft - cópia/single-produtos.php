<?php 
// Template Name: Produtos
get_header(); ?>

<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
	

		<section class="container produto_item animar-interno">
			<div class="grid-11">
				<img src="<?php the_field('main_image'); ?>" alt="Bikcraft <?php the_title(); ?>">
				<h2><?php the_title();?></h2>
			</div>
			<div class="grid-5 produto_icone"><img src="<?php the_field('main_icon'); ?>" alt="<?php the_title(); ?>"></div>
			<div class="grid-8"><img src="<?php the_field('main_secondary_image'); ?>" alt="<?php the_title(); ?>"></div>
			<div class="grid-8 produto_info">
				<?php the_content();?>
				
			</div>
		</section>
	

				<?php include(TEMPLATEPATH."/inc/contact.php");?>	
			</div>
		</section>
		<?php endwhile; else: endif; ?>
		<?php get_footer(); ?>