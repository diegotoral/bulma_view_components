# frozen_string_literal: true

module Bulma
  class SubtitleComponent < Component
    def initialize(text = nil, size: nil)
      @text = text
      @size = size
    end

    def call
      content_tag :p, @text || content, class: class_names("subtitle", "is-#{@size}" => @size.present?)
    end
  end
end
