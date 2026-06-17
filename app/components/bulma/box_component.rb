# frozen_string_literal: true

module Bulma
  class BoxComponent < Component
    css_class "box"

    def initialize(tag: :div, **options)
      super

      @tag = tag
    end

    def call
      content_tag @tag, content, @options
    end
  end
end
