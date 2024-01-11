# frozen_string_literal: true

RSpec.describe Bulma::ContentComponent, type: :component do
  it "renders content within a div tag by default" do
    render_inline(described_class.new) { "My content" }

    expect(page).to have_css "div.content", text: "My content"
  end

  it "allows to specify size as a symbol" do
    render_inline(described_class.new(size: :small))

    expect(page).to have_css "div.content.is-small"
  end
end
