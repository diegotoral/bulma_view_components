# frozen_string_literal: true

module Bulma
  class ProgressBarComponent < Component
    def initialize(value = nil, max: nil, color: nil, size: nil, **options)
      @value = value
      @max = max
      @color = color
      @size = size
      @options = options
    end

    def call
      content_tag(
        :progress,
        content,
        class: class_names(
          "progress",
          "is-#{@color}" => @color.present?,
          "is-#{@size}" => @size.present?
        ),
        value: @value,
        max: @max,
        **@options
      )
    end
  end
end
