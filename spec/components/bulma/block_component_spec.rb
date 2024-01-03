# frozen_string_literal: true

RSpec.describe Bulma::BlockComponent, type: :component do
  it 'renders content within a div tag' do
    render_inline(described_class.new) { 'My block' }

    expect(page).to have_css 'div.block', text: 'My block'
  end
end
