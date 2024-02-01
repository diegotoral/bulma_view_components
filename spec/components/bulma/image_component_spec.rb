# frozen_string_literal: true

RSpec.describe Bulma::ImageComponent, type: :component do
  it "renders a figure tag" do
    render_inline(described_class.new)

    expect(page).to have_css "figure.image"
  end
end
