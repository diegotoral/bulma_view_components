# frozen_string_literal: true

module Bulma
  class TagComponent < Component
    def initialize(color: nil, size: :normal)
      @size = size
      @color = color
    end

    def call
      content_tag :span, content, class: class_names(
        'tag' => true,
        "is-#{@color}" => @color,
        "is-#{@size}" => @size
      )
    end
  end
end
