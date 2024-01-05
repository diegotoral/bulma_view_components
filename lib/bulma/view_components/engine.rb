# frozen_string_literal: true

module Bulma
  module ViewComponents
    class Engine < ::Rails::Engine
      isolate_namespace Bulma::ViewComponents

      config.autoload_paths += [
        root.join("app/helpers"),
        root.join("app/components")
      ]

      initializer "bulma_view_components.helpers" do
        ActiveSupport.on_load(:action_controller_base) do
          helper Bulma::ComponentsHelper
        end
      end
    end
  end
end
