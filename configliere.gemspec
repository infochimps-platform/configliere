lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'configliere/version'

Gem::Specification.new do |gem|
  gem.name = 'configliere'
  gem.version = Configliere::VERSION

  gem.authors = ['Infochimps']
  gem.description = "You've got a script. It's got some settings. Some settings are for this module, some are for that module. Most of them don't change. Except on your laptop, where the paths are different.  Or when you're in production mode. Or when you're testing from the command line.\n\n   \"\" So, Consigliere of mine, I think you should tell your Don what everyone knows. \"\" -- Don Corleone\n\nConfigliere manage settings from many sources: static constants, simple config files, environment variables, commandline options, straight ruby. You don't have to predefine anything, but you can ask configliere to type-convert, require, document or password-obscure any of its fields. Modules can define config settings independently of each other and the main program.\n"
  gem.email = ['coders@infochimps.org']

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(/^bin/){ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(/^(test|spec|features)/)
  gem.require_paths = ['lib']

  gem.homepage = "https://github.com/infochimps-labs/configliere"
  gem.licenses = ["Apache 2.0"]
  gem.summary = "Wise, discreet configuration management"

  gem.add_dependency(%q<multi_json> , '~> 1.11')
  gem.add_dependency(%q<highline>   , '1.5.2')
end
