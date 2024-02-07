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

  it "renders content provided as a block" do
    render_inline(described_class.new) { "Subtitle" }

    expect(page).to have_content "Subtitle"
  end

  it "allows to specify size as option" do
    render_inline(described_class.new(size: 5))

    expect(page).to have_css "p.is-5"
  end
end
