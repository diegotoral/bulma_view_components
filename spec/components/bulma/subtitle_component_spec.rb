# frozen_string_literal: true

RSpec.describe Bulma::SubtitleComponent, type: :component do
  it "renders a p tag by default" do
    render_inline(described_class.new)

    expect(page).to have_css "p.subtitle"
  end
end
