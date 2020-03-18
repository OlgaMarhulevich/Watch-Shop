# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

Rails.application.config.assets.paths << Rails.root.join('node_modules')

Rails.application.config.assets.precompile += %w( bootstrap.css )
Rails.application.config.assets.precompile += %w( flexslider.css )
Rails.application.config.assets.precompile += %w( memenu.css )
Rails.application.config.assets.precompile += %w( style.css )
Rails.application.config.assets.precompile += %w( mystyle.css )

Rails.application.config.assets.precompile += %w( jquery-1.11.0.min.js )
Rails.application.config.assets.precompile += %w( simpleCart.min.js )
Rails.application.config.assets.precompile += %w( memenu.js )
Rails.application.config.assets.precompile += %w( jquery.easydropdown.js )
Rails.application.config.assets.precompile += %w( responsiveslider.min.js )
Rails.application.config.assets.precompile += %w( imagezoom.js )
Rails.application.config.assets.precompile += %w( jquery.flexslider.js )
Rails.application.config.assets.precompile += %w( bootstrap.min.js )
Rails.application.config.assets.precompile += %w( glyphicons-halflings-regular.eot )
Rails.application.config.assets.precompile += %w( glyphicons-halflings-regular.ttf )
Rails.application.config.assets.precompile += %w( glyphicons-halflings-regular.woff )
Rails.application.config.assets.precompile += %w( glyphicons-halflings-regular.woff2 )
Rails.application.config.assets.precompile += %w( glyphicons-halflings-regular.svg )
Rails.application.config.assets.precompile += %w( typeahead.bundle.js )
Rails.application.config.assets.precompile += %w( easydrop.js )
Rails.application.config.assets.precompile += %w( mem.js )
Rails.application.config.assets.precompile += %w( responsive.js )
Rails.application.config.assets.precompile += %w( flex.js )
Rails.application.config.assets.precompile += %w( my.js )