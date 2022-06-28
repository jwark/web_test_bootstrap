require 'rspec/core/rake_task'
require 'rake/clean'

Dir.glob(File.join(File.dirname(__FILE__), 'lib', '**', '*.rb')).each do |file|
  require file
end

CLEAN.include(
  "target"
)

task :default => [:clean, "spec:integration"]

namespace :spec do

  desc "Run integration specs"
  RSpec::Core::RakeTask.new(:integration) do |t|
    t.pattern = "./spec/integration/**/*_spec.rb" # don't need this, it's default.
    t.rspec_opts = ["--color", "--format", "documentation"]
  end

end