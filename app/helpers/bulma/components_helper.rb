# frozen_string_literal: true

module Bulma
  module ComponentsHelper
    BULMA_HELPER_COMPONENT_MAP = {
      block: Bulma::BlockComponent,
      box: Bulma::BoxComponent,
      button: Bulma::ButtonComponent,
      content: Bulma::ContentComponent,
      tag: Bulma::TagComponent,
      title: Bulma::TitleComponent
    }.freeze

    BULMA_HELPER_COMPONENT_MAP.each do |name, component|
      define_method :"bulma_#{name}" do |*args, **kwargs, &block|
        render component.new(*args, **kwargs), &block
      end
    end
  end
end
