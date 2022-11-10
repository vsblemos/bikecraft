<?php 
// Template Name: Sobre
get_header(); ?>
<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
<?php include(TEMPLATEPATH."/inc/intro.php");?>		

		<section class="missao_sobre container animar-interno">
			<div class="grid-10">
				<h2 class="subtitulo-interno">História, Missão e Visão</h2>
				<p><?php the_field('mission')?></p>
			
			</div>
			<div class="grid-6">
				<h2 class="subtitulo-interno">Valores</h2>
				<?php the_field('values')?>
			</div>

			<div class="grid-16 foto-equipe">
				<img src="<?php the_field('team_img') ?>" alt="Equipe Bikcraft">
			</div>

		</section>

		<?php include(TEMPLATEPATH."/inc/quality.php");?>	
		<?php endwhile; else: endif; ?>
		<?php get_footer(); ?>