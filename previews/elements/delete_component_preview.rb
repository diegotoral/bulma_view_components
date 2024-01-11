# frozen_string_literal: true

class Elements::DeleteComponentPreview < ViewComponent::Preview
  def default
    render Bulma::DeleteComponent.new
  end

  def sizes
  end
end
