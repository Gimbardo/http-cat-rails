require_relative "lib/http/cat/rails/version"

Gem::Specification.new do |spec|
  spec.name        = "http-cat-rails"
  spec.version     = Http::Cat::Rails::VERSION
  spec.authors     = ["Gamberi Elia"]
  spec.email       = ["me@gimbaro.dev"]

  spec.summary     = "Configurable Ruby gem that replaces error pages with http.cat image"
  spec.description = "Configurable Ruby gem that replaces error pages with http.cat image"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Gimbardo/http-cat-rails"
  spec.metadata["homepage_uri"] = "https://github.com/Gimbardo/http-cat-rails"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 5.0.0"
end
