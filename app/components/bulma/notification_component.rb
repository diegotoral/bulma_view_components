# frozen_string_literal: true

module Bulma
  class NotificationComponent < Component
    renders_one :delete, DeleteComponent

    def initialize(color: nil, light: false)
      @color = color
      @light = light
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
