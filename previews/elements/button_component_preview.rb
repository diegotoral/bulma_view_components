# frozen_string_literal: true

class Elements::ButtonComponentPreview < ViewComponent::Preview
  def default
  end

  def colors
  end

  def sizes
  end

  def fullwidth
  end

  def loading
    render(Bulma::ButtonComponent.new("Button", loading: true))
  end
end
