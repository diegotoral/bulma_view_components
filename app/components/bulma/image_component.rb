# frozen_string_literal: true

module Bulma
  class ImageComponent < Component
    def initialize(size: nil)
      @size = size
    end

    def call
      content_tag :figure, content, class: class_names("image", "is-#{@size}" => @size.present?)
    end
  end
end
