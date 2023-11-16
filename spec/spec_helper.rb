# frozen_string_literal: true

ENV["RAILS_ENV"] = "test"

require "rails"
require "rails/test_help"
require "bulma_view_components"
require "view_component/test_helpers"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.include ViewComponent::TestHelpers, type: :component
end

require File.expand_path("../demo/config/environment.rb", __dir__)
