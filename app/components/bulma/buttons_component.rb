# frozen_string_literal: true

module Bulma
  class ButtonsComponent < Component
    renders_many :buttons, ButtonComponent

    def initialize(attached: false, align: nil)
      @attached = attached
      @align = align
    end

    def classes
      class_names("buttons", "has-addons" => @attached, "is-#{@align}" => @align.present?)
    end
  end
end
