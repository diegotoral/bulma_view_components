# frozen_string_literal: true

module Bulma
  class BoxComponent < Component
    def initialize(**options)
      @options = options
      @options[:class] = class_names("box", @options[:class])
    end

    def call
      content_tag :div, content, @options
    end
  end
end
