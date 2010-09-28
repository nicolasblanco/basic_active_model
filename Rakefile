require "rake"
require "rake/rdoctask"
require "rspec"
require "rspec/core/rake_task"

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "basic_active_model"
    gem.summary = %Q{BasicActiveModel provides a minimal architecture for a model that may be used in Rails forms.}
    gem.description = %Q{BasicActiveModel provides a minimal architecture for a model that may be used in Rails forms.}
    gem.email = "slainer68@gmail.com"
    gem.homepage = "http://github.com/novagile/basic_active_model"
    gem.authors = ["slainer68"]
    gem.add_development_dependency "rspec", ">= 2.0.0.beta.22"
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

Rspec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = "spec/**/*_spec.rb"
end

Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "basic_active_model #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

