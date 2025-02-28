# frozen_string_literal: true

module Bulma
  class IoniconsComponent < Component
    def initialize(name)
      @name = name
    end

    def call
      content_tag "ion-icon", nil, name: @name
    end
  end

  class FontAwesomeComponent < Component
    def initialize(name)
      @name = name
    end

    def call
      tag "i", class: "fas fa-#{@name}"
    end
  end

  class IconComponent < Component
    class << self
      attr_accessor :icon_component_class
    end

    attr_reader :text

    def initialize(icon, text: nil, color: nil, size: nil)
      @text = text
      @color = color
      @icon = self.class.icon_component_class.new(icon)
    end

    def classes
      class_names("icon", "has-text-#{@color}" => @color.present?)
    end
  end
end
