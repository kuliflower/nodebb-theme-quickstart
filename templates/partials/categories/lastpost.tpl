<div class="card" style="border-color: {../bgColor}">
	<!-- BEGIN posts -->
	<!-- IF @first -->
	<div component="category/posts">
		<p>
			<a href="{config.relative_path}/topic/{../topic.slug}<!-- IF ../index -->/{../index}<!-- ENDIF ../index -->">
				<!-- IF ../user.picture -->
				<img class="user-img" title="{../user.username}" alt="{../user.username}" src="{../user.picture}">
				<!-- ELSE -->
				<span class="user-icon user-img" title="{../user.username}" style="background-color: {../user.icon:bgColor};">{../user.icon:text}</span>
				<!-- ENDIF ../user.picture -->
				<span class="" title="{../topic.title}" style="">{../topic.title}</span>
			</a>
		</p>
		<!--<div class="post-content">
			{../content}
		</div>-->
		<div class="">
			<span>by 
			<a href="{config.relative_path}/user/{../user.userslug}">
				<span class="" title="{../user.username}" style="">{../user.username}</span>
			</a> 
			<small class="timeago" title="{../timestampISO}"></small></span>

		</div>
	</div>
	<!-- ENDIF @first -->
	<!-- END posts -->

	<!-- IF !../posts.length -->
	<div component="category/posts">
		<div class="post-content">
			[[category:no_new_posts]]
		</div>
	</div>
	<!-- ENDIF !../posts.length -->
</div>
