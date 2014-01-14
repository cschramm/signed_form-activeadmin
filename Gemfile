source 'https://rubygems.org'

gemspec

rails_version = ENV['RAILS_VERSION'] || 'master'

case rails_version
  when /master/
    gem 'rails', github: 'rails/rails'
  when /4-0-stable/
    gem 'rails', github: 'rails/rails', branch: '4-0-stable'
  when /3-2-stable/
    gem 'rails', github: 'rails/rails', branch: '3-2-stable'
    gem 'strong_parameters'
  when /3-1-stable/
    gem 'rails', github: 'rails/rails', branch: '3-1-stable'
    gem 'strong_parameters'
  else
    gem 'rails', ENV['RAILS_VERSION']
    gem 'strong_parameters'
end
