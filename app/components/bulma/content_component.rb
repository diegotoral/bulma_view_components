# frozen_string_literal: true

module Bulma
  class ContentComponent < Component
    def call
      content_tag :div, content, class: "content"
    end
  end
end
