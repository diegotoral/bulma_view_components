# frozen_string_literal: true

module Bulma
  module ViewComponents
    class Engine < ::Rails::Engine
      config.autoload_paths += [
        root.join('app/components')
      ]
    end
  end
end
