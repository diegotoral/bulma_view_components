# frozen_string_literal: true

module Bulma
  class TagComponent < Component
    def initialize(label = nil, color: nil, size: :normal, light: false)
      @label = label
      @size = size
      @color = color
      @light = light
    end

    def call
      content_tag :span, @label || content, class: class_names(
        "tag",
        "is-light" => @light,
        "is-#{@color}" => @color,
        "is-#{@size}" => @size
      )
    end
  end
end
