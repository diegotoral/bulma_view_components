# frozen_string_literal: true

module Bulma
  class ContentComponent < Component
    def initialize(size: nil)
      @size = size
    end

    def call
      content_tag :div, content, class: class_names(
        "content",
        "is-#{@size}" => @size.present?
      )
    end
  end
end
