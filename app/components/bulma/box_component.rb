# frozen_string_literal: true

module Bulma
  class BoxComponent < Component
    def initialize(tag: :div, **options)
      @tag = tag
      @options = options
      @options[:class] = class_names("box", @options[:class])
    end

    def call
      content_tag @tag, content, @options
    end
  end
end
