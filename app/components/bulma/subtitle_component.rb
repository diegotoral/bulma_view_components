# frozen_string_literal: true

module Bulma
  class SubtitleComponent < Component
    def initialize(text = nil)
      @text = text
    end

    def call
      content_tag :p, @text, class: "subtitle"
    end
  end
end
