# frozen_string_literal: true

RSpec.describe Bulma::BoxComponent, type: :component do
  it "renders content within a div" do
    render_inline(described_class.new) do
      "I'm in a box."
    end

    expect(page).to have_css "div.box", text: "I'm in a box."
  end

  it "merges custom class with box class" do
    render_inline(described_class.new(class: "mt-4"))

    expect(page).to have_css "div.box.mt-4"
  end
end
