# frozen_string_literal: true

RSpec.describe Bulma::ButtonsComponent, type: :component do
  it "renders a div" do
    render_inline(described_class.new)

    expect(page).to have_css "div.buttons"
  end

  it "allows to render buttons within it" do
    component = described_class.new.tap { _1.with_button("My Button") }

    render_inline(component)

    expect(page).to have_css "div.buttons>button.button", text: "My Button"
  end

  it "allows to attach buttons together" do
    render_inline(described_class.new(attached: true))

    expect(page).to have_css "div.has-addons"
  end

  it "allows to align buttons as wanted" do
    render_inline(described_class.new(align: :centered))

    expect(page).to have_css "div.is-centered"
  end
end
