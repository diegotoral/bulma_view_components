# frozen_string_literal: true

module Bulma
  class Component < ViewComponent::Base
    def self.css_class(class_name, **options)
      css_classes.add(class_name, **options)
    end

    def self.css_classes
      @css_classes ||= ComponentClasses.new
    end

    def initialize(**options)
      @options = options
      @options[:class] = class_names(*self.class.css_classes.compile(to: self), options[:class])
    end
  end
end
