# frozen_string_literal: true

RSpec.describe Bulma::DeleteComponent, type: :component do
  it "renders a button input" do
    render_inline(described_class.new)

    expect(page).to have_css "button.delete"
  end

  it "allows to specify size as a Symbol" do
    render_inline(described_class.new(size: :small))

    expect(page).to have_css "button.is-small"
  end
end
