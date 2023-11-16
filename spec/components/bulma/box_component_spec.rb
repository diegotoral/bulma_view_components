# frozen_string_literal: true

RSpec.describe Bulma::BoxComponent, type: :component do
  it 'can be rendered' do
    render_inline described_class.new { 'Test' }

    expect(page).to have_text 'Test'
  end
end
