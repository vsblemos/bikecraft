<?php $sobre = get_page_by_title('sobre'); ?>
<section class="qualidade container">
			<h2 class="subtitulo"><?php the_field('about_title', $sobre) ?></h2>
			<img src="<?php the_field('logo_bikecraft', $sobre) ?>" alt="Bikcraft">
			<ul class="qualidade_lista">
            <?php if(have_rows('quality_list',$sobre)): while(have_rows('quality_list',$sobre)) : the_row(); ?>
				<li class="grid-1-3">
					<h3><?php the_sub_field('quality_title',$sobre) ?></h3>
					<p><?php the_sub_field('quality_description',$sobre) ?></p>
				</li>
                <?php endwhile; else : endif; ?>
				
			</ul>
            <?php if(!is_page('sobre')) {?>
			<div class="call">
				<p><?php the_field('about_call', $sobre) ?></p>
				<a href="/bikecraft-v1/sobre/" class="btn btn-preto">Sobre</a>
			</div>
            <?php }?>
		</section>