# frozen_string_literal: true

module Bulma
  class ProgressBarComponent < Component
    css_class "progress"
    css_class :color_class, if: -> { @color.present? }
    css_class :size_class, if: -> { @size.present? }

    def initialize(value = nil, max: nil, color: nil, size: nil, **options)
      @value = value
      @max = max
      @color = color
      @size = size

      super(**options)
    end

    def call
      content_tag(
        :progress,
        content,
        value: @value,
        max: @max,
        **@options
      )
    end

    private

    def color_class = "is-#{@color}"

    def size_class = "is-#{@size}"
  end
end
