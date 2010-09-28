require 'ruby-debug'
require 'rspec'

require "active_model"

require File.dirname(__FILE__) + '/../lib/basic_active_model'

RSpec.configure do |config|
  config.mock_with :rspec
end

