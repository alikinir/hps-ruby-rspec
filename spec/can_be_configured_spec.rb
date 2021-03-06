# encoding: UTF-8
require 'spec_helper'
require_relative 'actionwords'

describe 'Can be configured' do
  include Actionwords

  it "Display settings (uid:096aca8d-2f2b-4d2a-a493-ec5d3dd70e85)" do
    # Tags: priority:medium
    # Given the coffee machine is started
    the_coffee_machine_is_started
    # When I switch to settings mode
    i_switch_to_settings_mode
    # Then displayed message is:
    displayed_message_is("Settings:\n - 1: water hardness\n - 2: grinder")
  end

  it "Default settings (uid:721fdb5f-3750-4302-a806-1c3c8d15d2e5)" do
    # Tags: priority:high
    # Given the coffee machine is started
    the_coffee_machine_is_started
    # When I switch to settings mode
    i_switch_to_settings_mode
    # Then settings should be:
    settings_should_be("| water hardness | 2      |\n| grinder        | medium |")
  end
end