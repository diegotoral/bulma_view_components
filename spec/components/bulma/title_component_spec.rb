# frozen_string_literal: true

RSpec.describe Bulma::TitleComponent, type: :component do
  it "renders content within a h1 by default" do
    render_inline(described_class.new) { "Title 1" }

    expect(page).to have_css "h1.title", text: "Title 1"
  end

  it "accepts content as first argument" do
    render_inline(described_class.new("Title"))

    expect(page).to have_content "Title"
  end

  it "renders content within another tag as specified" do
    render_inline(described_class.new(as: :h2)) { "Title 1" }

    expect(page).to have_css "h2.title", text: "Title 1"
  end

  it "allows to set a size" do
    render_inline(described_class.new(size: 6)) { "Title 1" }

    expect(page).to have_css "h1.is-6", text: "Title 1"
  end

  it "throws an error on invalid values to size" do
    expect {
      described_class.new(size: 999)
    }.to raise_error ArgumentError, /invalid value to size/
  end

  it "allows to render a subtitle" do
    render_inline(described_class.new("Title")) { _1.with_subtitle "Subtitle" }

    expect(page).to have_css "p.subtitle", text: "Subtitle"
  end
end
