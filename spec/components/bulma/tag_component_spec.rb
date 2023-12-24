# frozen_string_literal: true

RSpec.describe Bulma::TagComponent, type: :component do
  it 'renders content within a span tag' do
    render_inline(described_class.new) { 'Tag label' }

    expect(page).to have_css 'span.tag', text: 'Tag label'
  end

  it 'renders with size normal by default' do
    render_inline(described_class.new) { 'Tag label' }

    expect(page).to have_css 'span.is-normal', text: 'Tag label'
  end

  it 'allows to specify a color as a Symbol' do
    render_inline(described_class.new(color: :black)) { 'Black' }

    expect(page).to have_css 'span.is-black', text: 'Black'
  end

  it 'does not include broken class names' do
    render_inline(described_class.new(color: nil, size: nil))

    expect(page).not_to have_css 'span.tag.is-'
  end

  it 'allows to set a size as a Symbol' do
    render_inline(described_class.new(size: :medium)) { 'Medium' }

    expect(page).to have_css 'span.is-medium', text: 'Medium'
  end

  it 'allows to make colors lighter' do
    render_inline(described_class.new(color: :black, light: true))

    expect(page).to have_css 'span.is-light'
  end
end
