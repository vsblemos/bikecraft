<?php $portifolio = get_page_by_title('Portifolio'); ?>
<section class="portfolio">
			<div class="container">
				<ul class="portfolio_lista rslides_portfolio">
				<?php if(have_rows('portifolio_item',$portifolio)): while(have_rows('portifolio_item',$portifolio)) : the_row(); ?>
					<li>
						<div class="grid-8"><img src="<?php the_sub_field('portifolio_img1',$portifolio) ?>"alt="<?php the_sub_field('portifolio_descricao1',$portifolio) ?>"></div>
						<div class="grid-8"><img src="<?php the_sub_field('portifolio_img2',$portifolio) ?>" alt="<?php the_sub_field('portifolio_descricao2',$portifolio) ?>"></div>
						<div class="grid-16"><img src="<?php the_sub_field('portifolio_img3',$portifolio) ?>" alt="<?php the_sub_field('portifolio_descricao3',$portifolio) ?>"></div>
					</li>
					<?php endwhile; else : endif; ?>

			

				</ul>

				<?php if(!is_page('portifolio')) {?>
				<div class="call">
					<p><?php the_field('portifolio_call',$portifolio); ?></p>
					<a href="/bikecraft-v1/portfolio/" class="btn">Portfólio</a>
				</div>
				<?php }?>
			</div>
		</section>