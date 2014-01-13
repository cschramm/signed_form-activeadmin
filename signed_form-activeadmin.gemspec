# -*- encoding: utf-8 -*-
require File.expand_path('../lib/signed_form-activeadmin/version', __FILE__)

Gem::Specification.new do |s|
  s.name = 'signed_form-activeadmin'
  s.version = SignedForm::ActiveAdmin::Version.to_s
  s.platform = Gem::Platform::RUBY
  s.author = 'Christopher Schramm'
  s.email = 'signed_form-aa@cschramm.eu'
  s.homepage = 'https://github.com/cschramm/signed_form-activeadmin'
  s.description = %q{
    Integrates signed_form into activeadmin forms.
}
  s.summary = %q{
    Integrates signed_form into activeadmin forms.
}
  s.licenses = %w(MIT)
  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = %w(lib)
  s.extra_rdoc_files = %w(README.md)

  s.add_development_dependency 'rake'
  s.add_development_dependency 'activemodel', '>= 3.1'
  s.add_development_dependency 'actionpack', '>= 3.1'
  s.add_development_dependency 'strong_parameters'
  s.add_development_dependency 'minitest'

  s.add_dependency 'signed_form'

  s.add_runtime_dependency 'activeadmin', '>= 0.4.0'
end
