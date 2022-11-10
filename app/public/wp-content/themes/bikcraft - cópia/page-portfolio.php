<?php 
// Template Name: Portifolio
get_header(); ?>
<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
<?php include(TEMPLATEPATH."/inc/intro.php");?>		

		<section class="container animar-interno">
			<ul class="rslides">
			<?php if(have_rows('portifolio_quote')): while(have_rows('portifolio_quote')) : the_row(); ?>
				<li>
					<blockquote class="quote_clientes">
						<p><?php the_sub_field('quote')?></p>
						<cite><?php the_sub_field('quote_name')?></cite>
					</blockquote>
				</li>
				<?php endwhile; else : endif; ?>
			</ul>
		</section>

		<?php include(TEMPLATEPATH."/inc/portifolio.php");?>	
		<?php endwhile; else: endif; ?>
		<?php get_footer(); ?>