# frozen_string_literal: true

class Elements::TagComponentPreview < ViewComponent::Preview
  def default
    render(Bulma::TagComponent.new) { "Tag label" }
  end

  def colors
  end

  def sizes
  end
end
