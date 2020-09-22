require "rspec"
require_relative "../lib/ruby_challenge"

RSpec.configure do |config|
  config.warnings = true
  config.default_formatter = "doc"
  config.order = :random
  Kernel.srand config.seed
end
