# frozen_string_literal: true

RSpec.describe Bulma::SubtitleComponent, type: :component do
  it "renders a p tag by default" do
    render_inline(described_class.new)

    expect(page).to have_css "p.subtitle"
  end

  it "renders content provided as first argument" do
    render_inline(described_class.new("Subtitle"))

    expect(page).to have_content "Subtitle"
  end

  it "render content provided as a block" do
    render_inline(described_class.new) { "Subtitle" }

    expect(page).to have_content "Subtitle"
  end
end
