require 'puppet-lint'

desc "Run lint check on puppet manifests"
task :lint do
linter =  PuppetLint.new
  Dir.glob('modules/base/manifests/*.pp').each do |puppet_file|
    puts "Evaluating #{puppet_file}"
    linter.file = puppet_file
    linter.run
  end
  fail if linter.errors?
 end

task :test => [:lint]

task :default => :test
