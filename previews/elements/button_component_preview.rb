# frozen_string_literal: true

class Elements::ButtonComponentPreview < ViewComponent::Preview
  def default
    render(Bulma::ButtonComponent.new) { "Button" }
  end

  def colors
  end

  def sizes
  end

  def fullwidth
    render(Bulma::ButtonComponent.new(fullwidth: true)) { "Button" }
  end

  def loading
    render(Bulma::ButtonComponent.new(loading: true)) { "Loading" }
  end
end
