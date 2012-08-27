set :markdown_engine, :redcarpet
set :markdown, :layout_engine => :erb

activate :directory_indexes

###
# Blog settings
###
activate :blog do |blog|
  blog.permalink = ":title"
  blog.layout = "blog_layout"
  blog.prefix = "blog"
  blog.summary_separator = %r{(<p>read more</p>)}
  blog.taglink = "categories/:tag"
end

###
# Compass
###
require 'susy'
require 'modular-scale'
compass_config do |config|
    config.output_style = :expanded
end

set :css_dir, 'css'
set :js_dir, 'js'
set :images_dir, 'img'

# Build-specific configuration
configure :build do
  activate :minify_css
  activate :minify_javascript

  activate :relative_assets
end
