# frozen_string_literal: true

RSpec.describe Bulma::ImageComponent, type: :component do
  it "renders a figure tag" do
    render_inline(described_class.new)

    expect(page).to have_css "figure.image"
  end

  it "renders content within the figure tag" do
    render_inline(described_class.new) { "My content" }

    expect(page).to have_content "My content"
  end

  it "allows to specify size" do
    render_inline(described_class.new(size: "16x16"))

    expect(page).to have_css "figure.is-16x16"
  end

  it "renders without size by default" do
    render_inline(described_class.new)

    expect(page[:class]).not_to match(/is-*/)
  end
end
