require "test_helper"

module GraphiQL
  class RailsTest < ActiveSupport::TestCase
    test "configs can be set" do
      refute GraphiQL::Rails.config.query_params
      GraphiQL::Rails.config.query_params = true
      assert GraphiQL::Rails.config.query_params
      GraphiQL::Rails.config.query_params = false
      
      refute GraphiQL::Rails.config.custom_script
      GraphiQL::Rails.config.custom_script = '/javascripts/custom.js'
      assert GraphiQL::Rails.config.custom_script
      GraphiQL::Rails.config.custom_script = ''
    end
  end
end
