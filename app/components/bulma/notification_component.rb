# frozen_string_literal: true

module Bulma
  class NotificationComponent < Component
    def initialize(color: nil, light: false)
      @color = color
      @light = light
    end

    def call
      content_tag(:div, content, class: classes)
    end

    def classes
      class_names(
        "notification",
        "is-#{@color}" => @color.present?,
        "is-light" => @light
      )
    end
  end
end
