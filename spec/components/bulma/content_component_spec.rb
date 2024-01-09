# frozen_string_literal: true

RSpec.describe Bulma::ContentComponent, type: :component do
  it "renders content within a div tag by default" do
    render_inline(described_class.new) { "My content" }

    expect(page).to have_css "div.content", text: "My content"
  end
end
