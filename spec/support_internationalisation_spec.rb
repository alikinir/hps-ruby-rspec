# encoding: UTF-8
require 'spec_helper'
require_relative 'actionwords'

describe 'Support internationalisation' do
  include Actionwords

  context "Messages are based on language" do
    def messages_are_based_on_language(ready_message, language)
      # Tags: priority:medium
      # When I start the coffee machine using language "<language>"
      i_start_the_coffee_machine_using_language_lang(language)
      # Then message "<ready_message>" should be displayed
      message_message_should_be_displayed(ready_message)
    end

    it "English (uid:d175b3b0-c766-426f-921c-7ff80b886118)" do
      messages_are_based_on_language('Ready', 'en')
    end

    it "French (uid:bb0adb72-8839-4984-816c-aff7cff7ed1b)" do
      messages_are_based_on_language('Pret', 'fr')
    end
  end

  it "No messages are displayed when machine is shut down (uid:8f29e0ba-4213-46a0-84af-a037a4ba74b8)" do
    # Tags: priority:medium
    # Given the coffee machine is started
    the_coffee_machine_is_started
    # When I shutdown the coffee machine
    i_shutdown_the_coffee_machine
    # Then message "" should be displayed
    message_message_should_be_displayed("")
  end
end