# frozen_string_literal: true

class Elements::ButtonComponentPreview < ViewComponent::Preview
  def default
  end

  def colors
  end

  def sizes
  end

  def fullwidth
    render(Bulma::ButtonComponent.new("Button", fullwidth: true))
  end

  def loading
    render(Bulma::ButtonComponent.new("Button", loading: true))
  end
end
