# frozen_string_literal: true

module Bulma
  class ButtonComponent < Component
    attr_reader :type, :value

    def initialize(
      value = nil,
      type: "submit",
      size: nil,
      color: nil,
      light: false,
      fullwidth: false,
      loading: false
    )
      @value = value
      @type = type
      @size = size
      @color = color
      @light = light
      @fullwidth = fullwidth
      @loading = loading
    end

    def classes
      class_names(
        "button",
        "is-#{@size}" => @size,
        "is-light" => @light,
        "is-#{@color}" => @color.present?,
        "is-fullwidth" => @fullwidth,
        "is-loading" => @loading
      )
    end
  end
end
