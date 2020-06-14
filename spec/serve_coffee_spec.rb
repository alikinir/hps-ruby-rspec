# encoding: UTF-8
require 'spec_helper'
require_relative 'actionwords'

describe 'Serve coffee' do
  include Actionwords

  it "Simple use (uid:6b0f9278-29ee-4da2-86ba-b7a68b375e5d)" do
    # Well, sometimes, you just get a coffee.
    # Tags: priority:high
    # Given the coffee machine is started
    the_coffee_machine_is_started
    # When I take a coffee
    i_take_a_coffee
    # Then coffee should be served
    coffee_should_be_served
  end
end