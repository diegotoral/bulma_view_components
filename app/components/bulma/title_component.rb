# frozen_string_literal: true

module Bulma
  class TitleComponent < Component
    renders_one :subtitle, SubtitleComponent

    def initialize(title = nil, as: :h1, size: 1)
      raise ArgumentError, "invalid value to size" if size > 6

      @title = title
      @as = as
      @size = size
    end

    def call
      concat content_tag(@as, @title || content, class: class_names("title", "is-#{@size}"))
      concat subtitle
    end
  end
end
