# encoding: UTF-8
require 'spec_helper'
require_relative '../actionwords'

describe 'Grounds' do
  include Actionwords

  before(:each) do
    # Given the coffee machine is started
    the_coffee_machine_is_started
    # And I handle everything except the grounds
    i_handle_everything_except_the_grounds
  end

  it "When the grounds are emptied, message is removed (uid:d6738df0-6b64-49e8-81c8-5d14ff583e49)" do
    # Tags: priority:medium
    # When I take "30" coffees
    i_take_coffee_number_coffees(30)
    # And I empty the coffee grounds
    i_empty_the_coffee_grounds
    # Then message "Ready" should be displayed
    message_message_should_be_displayed("Ready")
  end

  it "Message \"Empty grounds\" is displayed after 30 coffees are taken (uid:58d9171e-8743-41d8-b190-5b1200fe9c9a)" do
    # Tags: priority:high
    # When I take "30" coffees
    i_take_coffee_number_coffees(30)
    # Then message "Empty grounds" should be displayed
    message_message_should_be_displayed("Empty grounds")
  end
end