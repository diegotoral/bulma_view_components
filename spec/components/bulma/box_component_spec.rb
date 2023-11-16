# frozen_string_literal: true

RSpec.describe Bulma::BoxComponent, type: :component do
  it 'renders content within a div' do
    render_inline(described_class.new) do
      "I'm in a box."
    end

    expect(page).to have_css 'div.box', text: "I'm in a box."
  end
end
