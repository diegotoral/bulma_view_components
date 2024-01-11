# frozen_string_literal: true

RSpec.describe Bulma::ButtonComponent, type: :component do
  it "renders a submit button with the button class by default" do
    render_inline(described_class.new)

    expect(page).to have_css "button[type='submit'].button"
  end

  it "allows to specify the type of button to render" do
    render_inline(described_class.new(type: :reset))

    expect(page).to have_css "button[type='reset']"
  end

  it "renders content within the button" do
    render_inline(described_class.new) { "My button" }

    expect(page).to have_css "button.button", text: "My button"
  end

  it "renders content provided as an argument" do
    render_inline(described_class.new("My button", size: :large))

    expect(page).to have_css "button.button", text: "My button"
  end

  it "allows to specify a color as a Symbol" do
    render_inline(described_class.new(color: :primary))

    expect(page).to have_css "button.is-primary"
  end

  it "allows to make color lighter" do
    render_inline(described_class.new(color: :primary, light: true))

    expect(page).to have_css "button.is-primary.is-light"
  end

  it "allows to specify the size as a Symbol" do
    render_inline(described_class.new(size: :small))

    expect(page).to have_css "button.is-small"
  end

  it "allows to make button fullwidth" do
    render_inline(described_class.new(fullwidth: true))

    expect(page).to have_css "button.is-fullwidth"
  end

  it "allows to mark button as loading" do
    render_inline(described_class.new(loading: true))

    expect(page).to have_css "button.is-loading"
  end
end
