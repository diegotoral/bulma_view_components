# frozen_string_literal: true

module Bulma
  class BoxComponent < Component
    def call
      content_tag :div, content, class: 'box'
    end
  end
end
