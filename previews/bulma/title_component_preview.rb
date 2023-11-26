# frozen_string_literal: true

class Bulma::TitleComponentPreview < ViewComponent::Preview
  def default
    render(Bulma::TitleComponent.new) do
      "Title 1"
    end
  end

  def sizes
    render(Bulma::TitleComponent.new(size: 6)) do
      "Title 6"
    end
  end

  def paragraph
    render(Bulma::TitleComponent.new(as: :p)) do
      "Title 6"
    end
  end
end
