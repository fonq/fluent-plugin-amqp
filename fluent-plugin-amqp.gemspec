# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "fluent-plugin-amqp"
  gem.version       = "0.2.2"
  gem.authors       = ["Augusto Becciu", "Juan Manuel Barreneche", "fonQ"]
  gem.email         = ["devs@restorando.com", "noreply@fonq.nl"]

  gem.description   = %q{AMQP output plugin for Fluent}
  gem.summary       = %q{AMQP output plugin for Fluent}
  gem.homepage      = "https://github.com/fonq/fluent-plugin-amqp"

  gem.files         = `find ./ -type f | grep -v .git`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "fluentd", [">= 0.10.0", "< 2"]
  gem.add_dependency "bunny", ">= 0.10.8"
  gem.add_dependency "yajl-ruby", "~> 1.0"

  gem.add_development_dependency "rake", ">= 0.9.2"
  gem.add_development_dependency "mocha"
  gem.add_development_dependency "test-unit", ">= 3.1.0"
  
  gem.metadata = { "github_repo" => "ssh://github.com/fonq/fluent-plugin-amqp" }
end
