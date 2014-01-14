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

aa_version = ENV['AA_VERSION'] || 'master'

case aa_version
  when /master/
    gem 'activeadmin', github: 'gregbell/active_admin'
  when /0-6-stable/
    gem 'activeadmin', github: 'gregbell/active_admin', branch: '0-6-stable'
    gem 'sass-rails'
  else
    gem 'activeadmin', ENV['AA_VERSION']
end
