# frozen_string_literal: true

class Elements::TitleComponentPreview < ViewComponent::Preview
  def default
    render(Bulma::TitleComponent.new) do
      "Title 1"
    end
  end

  def sizes
  end

  def paragraph
    render(Bulma::TitleComponent.new(as: :p)) do
      "Title 6"
    end
  end
end
