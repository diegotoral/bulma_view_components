# frozen_string_literal: true

module Bulma
  class TitleComponent < Component
    def initialize(title = nil, as: :h1, size: 1)
      raise ArgumentError, "invalid value to size" if size > 6

      @title = title
      @as = as
      @size = size
    end

    def call
      content_tag @as, @title || content, class: class_names(
        "title",
        "is-#{@size}"
      )
    end
  end
end
