# frozen_string_literal: true

module Bulma
  class BlockComponent < Component
    def initialize(tag: :div, **options)
      super

      @tag = tag
      @options[:class] = class_names("block", @options[:class])
    end

    def call
      content_tag @tag, content, @options
    end
  end
end
