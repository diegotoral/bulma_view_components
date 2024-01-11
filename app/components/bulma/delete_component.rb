# frozen_string_literal: true

module Bulma
  class DeleteComponent < Component
    def initialize(size: nil)
      @size = size
    end

    def call
      content_tag :button, nil, class: class_names(
        "delete",
        "is-#{@size}" => @size.present?
      )
    end
  end
end
