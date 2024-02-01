# frozen_string_literal: true

module Bulma
  class ImageComponent < Component
    def call
      content_tag :figure, content, class: "image"
    end
  end
end
