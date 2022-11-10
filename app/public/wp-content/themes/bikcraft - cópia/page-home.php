<?php 
// Template Name: Home
get_header(); 
?>



<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
<?php 
	$image_id = get_field('bg_home');
	$bg_large = wp_get_attachment_image_src($image_id,'large');
	$bg_medium = wp_get_attachment_image_src($image_id,'medium');
?>
<style type="text/css">
.introducao{
background: url('<?php echo $bg_large[0]?>') no-repeat center;
background-size:cover;
}

@media only screen and (max-width: 767px) {
.introducao{
background: url('<?php echo $bg_medium[0]?>') no-repeat center;
background-size:cover;
}
}

</style>
		<section class="introducao">
			<div class="container">
				<h1><?php the_field('intro_title'); ?></h1>
				<blockquote class="quote-externo">
					<p><?php the_field('intro_quote'); ?></p>
					<cite><?php the_field('intro_cite'); ?></cite>
				</blockquote>
				<a href="/bikecraft-v1/produtos/" class="btn">Orçamento</a>
			</div>
		</section>
		
		<section class="produtos container animar">
			<h2 class="subtitulo">Produtos</h2>
			<ul class="produtos_lista">
			<?php
				$args = array (
				'post_type' => 'produtos',
				'order'   => 'ASC'
				);
				$the_query = new WP_Query ( $args );
			?>

			<?php if ( $the_query->have_posts() ) : while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
				<li class="grid-1-3">
					<div class="produtos_icone">
						<img src="<?php the_field('main_icon'); ?>" alt="Bikcraft Passeio">
					</div>
					<h3><?php the_title(); ?></h3>
					<p><?php the_field('product_resume'); ?></p>
				</li>

				<?php endwhile; else: endif; ?>
				<?php wp_reset_query(); wp_reset_postdata(); ?>
			</ul>

			<div class="call">
				<p><?php the_field('intro_call'); ?></p>
				<a href="/bikecraft-v1/produtos/" class="btn btn-preto">Produtos</a>
			</div>

		</section>
		<!-- Fecha Produtos -->

		<section class="portfolio">
			<div class="container">
				<h2 class="subtitulo">Portfólio</h2>
				<?php include(TEMPLATEPATH."/inc/portifolio.php");?>	
				
			</div>
		</section>
		
		<?php include(TEMPLATEPATH."/inc/quality.php");?>		
		<?php endwhile; else: endif; ?>
		<?php get_footer(); ?>

		

		