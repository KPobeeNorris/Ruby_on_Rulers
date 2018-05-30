this_dir = File.join(File.dirname(__FILE__), "..")
$LOAD_PATH.unshift File.expand_path(this_dir)

require "bundler/setup"
require "rulers"
require "./lib/rulers/"
require "pry"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
