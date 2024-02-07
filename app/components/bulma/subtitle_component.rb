# frozen_string_literal: true

module Bulma
  class SubtitleComponent < Component
    def call
      content_tag :p, nil, class: "subtitle"
    end
  end
end
