# frozen_string_literal: true

module Bulma
  class Component < ViewComponent::Base
    def initialize(**options)
      @options = options
    end
  end
end
