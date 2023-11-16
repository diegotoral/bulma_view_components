# frozen_string_literal: true

require_relative "lib/bulma/view_components/version"

Gem::Specification.new do |spec|
  spec.name = "bulma_view_components"
  spec.version = Bulma::ViewComponents::VERSION
  spec.authors = ["Diego Toral"]
  spec.email = ["diegotoral@gmail.com"]

  spec.summary = "ViewComponents for Bulma"
  spec.homepage = "https://github.com/diegotoral/bulma_view_components"
  spec.license = "MIT"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/diegotoral/bulma_view_components"

  spec.files = Dir["lib/**/*", "app/**/*", "LICENSE.txt", "README.md"]

  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.7.0"

  spec.add_runtime_dependency "rails", ">= 5.0.0"
  spec.add_runtime_dependency "view_component", "~> 3.7"
end
