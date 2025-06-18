# frozen_string_literal: true

module Bulma
  module ViewComponents
    class Engine < ::Rails::Engine
      isolate_namespace Bulma::ViewComponents

      config.autoload_paths += [
        root.join("app/helpers"),
        root.join("app/components")
      ]

      config.bulma_view_components = ActiveSupport::OrderedOptions.new

      config.bulma_view_components.icons = :ionicons

      initializer "bulma_view_components.helpers" do
        ActiveSupport.on_load(:action_controller_base) do
          helper Bulma::ComponentsHelper
        end
      end

      config.after_initialize do
        # Bulma::IconComponent.icon_component_class = Bulma::IoniconsComponent
        Bulma::IconComponent.icon_component_class = Bulma::FontAwesomeComponent
      end
    end
  end
end
