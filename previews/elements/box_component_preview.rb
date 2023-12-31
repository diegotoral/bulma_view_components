# frozen_string_literal: true

class Elements::BoxComponentPreview < ViewComponent::Preview
  def with_text_content
    render(Bulma::BoxComponent.new) do
      "I'm in a box."
    end
  end
end
