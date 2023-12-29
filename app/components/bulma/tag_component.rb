# frozen_string_literal: true

module Bulma
  class TagComponent < Component
    def initialize(color: nil, size: :normal, light: false)
      @size = size
      @color = color
      @light = light
    end

    def call
      content_tag :span, content, class: class_names(
        "tag",
        "is-light" => @light,
        "is-#{@color}" => @color,
        "is-#{@size}" => @size
      )
    end
  end
end
