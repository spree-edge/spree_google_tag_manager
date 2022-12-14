# encoding: UTF-8
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'spree_google_tag_manager/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_google_tag_manager'
  s.version     = SpreeGoogleTagManager.version
  s.summary     = 'Extension to add google tag manager in spree'
  s.description = 'A spree_extension that provides ability to add google tag manager'
  s.required_ruby_version = '>= 2.5'

  s.author    = 'Vishal Garg'
  s.email     = 'vishal@bluebash.co'
  s.homepage  = 'https://github.com/your-github-handle/spree_google_tag_manager'
  s.license = 'BSD-3-Clause'

  s.files       = `git ls-files`.split("\n").reject { |f| f.match(/^spec/) && !f.match(/^spec\/fixtures/) }
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree', '>= 4.3.2'
  s.add_dependency 'spree_extension'

  s.add_dependency 'deface'
  s.add_dependency 'spree_frontend'
  s.add_development_dependency 'spree_dev_tools'
end
