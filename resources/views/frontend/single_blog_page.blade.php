@extends('layouts.app')
@section('content')
<!-- for product page responsive nav. its from product.html  -->
<!-- from blog_single.html  -->
<link rel="stylesheet" type="text/css" href="{{ asset('public/frontends') }}/styles/blog_single_styles.css">
<link rel="stylesheet" type="text/css" href="{{ asset('public/frontends') }}/styles/blog_single_responsive.css">
<!-- Main Navigation from product.html -->
@include('layouts.front_partial.collaps_nav')


<!-- // From blog_single.html  -->
<!-- Home -->
<!-- Home -->

	<div class="home">
		<div class="home_background" >
        <div class="home_background" style="background-image:url({{ asset($single_blog->thumbnail) }}); background-repeat: no-repeat; background-attachment: fixed; background-size: 100% 100%;"  ></div>
        </div>
	</div>

	<!-- Single Blog Post -->

	<div class="single_post">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2">
					<div class="single_post_title">{{ ($single_blog->title) }}</div>
					<div class="single_post_text">
						<p>{{ ($single_blog->description) }}</p>



					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Blog Posts -->

	<div class="blog">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="blog_posts d-flex flex-row align-items-start justify-content-between">


                    @foreach($random_blogs as $row)
						<!-- Blog post -->
						<div class="blog_post">
							<div class="blog_image" style="background-image:url({{ asset($row->thumbnail) }})"></div>
							<div class="blog_text">{{ ($row->title) }}</div>
							<div class="blog_button"><a href="{{ route('single.blog',$row->id) }}">Continue Reading</a></div>
						</div>

                        @endforeach

						

					</div>
				</div>	
			</div>
		</div>
	</div>
<hr>
	
@endsection