# frozen_string_literal: true

RSpec.describe Bulma::BlockComponent, type: :component do
  it "renders content within a div tag" do
    render_inline(described_class.new) { "My block" }

    expect(page).to have_css "div.block", text: "My block"
  end

  it "merges custom class with box class" do
    render_inline(described_class.new(class: "mt-4"))

    expect(page).to have_css "div.block.mt-4"
  end

  it "renders with a user provided tag" do
    render_inline(described_class.new(tag: :section))

    expect(page).to have_css "section.block"
  end

  it "renders with user provided HTML attributes" do
    component = described_class.new(
      data: {controller: "hello"},
      aria: {label: "profile card"}
    )

    render_inline(component)

    expect(page).to have_css "div.block[data-controller='hello'][aria-label='profile card']"
  end
end
