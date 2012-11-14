# -*- ruby -*-

require 'rubygems'
require 'hoe'

Hoe.spec 'jscover' do
  developer('James Hu', 'jameshu@live.com')
  self.rubyforge_name = 'jscover' # if different than 'jscover'
  self.readme_file = 'README.rdoc'
  self.history_file = 'CHANGELOG.rdoc'
  self.extra_rdoc_files = FileList['*.rdoc']
  self.extra_dev_deps << ['rake-compiler', '>= 0']
  self.spec_extras = { :extensions => ["ext/#{self.name}/extconf.rb"] }
end

Rake::Task[:test].prerequisites << :compile

# vim: syntax=ruby
