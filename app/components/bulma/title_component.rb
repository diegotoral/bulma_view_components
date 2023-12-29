# frozen_string_literal: true

module Bulma
  class TitleComponent < Component
    def initialize(as: :h1, size: 1)
      raise ArgumentError, "invalid value to size" if size > 6

      @as = as
      @size = size
    end

    def call
      content_tag @as, content, class: class_names(
        "title",
        "is-#{@size}"
      )
    end
  end
end
