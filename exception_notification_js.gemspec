# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'exception_notification_js/version'

Gem::Specification.new do |gem|
  gem.name          = "exception_notification_js"
  gem.version       = ExceptionNotificationJs::VERSION
  gem.authors       = ["Fabio Rehm"]
  gem.email         = ["fgrehm@gmail.com"]
  gem.description   = %q{Get notified about JS errors on Rails apps}
  gem.summary       = gem.description
  gem.homepage      = "https://github.com/fgrehm/exception_notification_js"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'rails', '~> 3.2'

  gem.add_development_dependency 'rspec-rails'
  gem.add_development_dependency 'shoulda-matchers'
  gem.add_development_dependency 'combustion', '~> 0.3.1'
end
