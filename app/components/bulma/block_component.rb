# frozen_string_literal: true

module Bulma
  class BlockComponent < Component
    def call
      content_tag :div, content, class: 'block'
    end
  end
end
