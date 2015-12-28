require 'test_helper'
require 'generators/create_order/create_order_generator'

class CreateOrderGeneratorTest < Rails::Generators::TestCase
  tests CreateOrderGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
