
# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

set :css_dir, 'assets/css'
set :js_dir, 'assets/js'
set :images_dir, 'assets/images'

# Build-specific configuration
configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :minify_html
end

# Push to github pages
activate :deploy do |deploy|
  deploy.method = :git
  deploy.branch   = 'master'
end
