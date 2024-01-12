# frozen_string_literal: true

class Elements::ProgressBarComponentPreview < ViewComponent::Preview
  def default
    render Bulma::ProgressBarComponent.new 90
  end

  def colors
  end

  def sizes
  end
end
