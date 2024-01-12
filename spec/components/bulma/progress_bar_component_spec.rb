# frozen_string_literal: true

RSpec.describe Bulma::ProgressBarComponent, type: :component do
  it "renders a progress tag" do
    render_inline(described_class.new)

    expect(page).to have_css "progress.progress"
  end

  it "renders content within the progress tag" do
    render_inline(described_class.new) { "15%" }

    expect(page).to have_css "progress", text: "15%"
  end

  it "allows to set a value" do
    render_inline(described_class.new(90))

    expect(page).to have_css "progress[value='90']"
  end

  it "renders without a value by default" do
    render_inline(described_class.new)

    expect(page.find("progress").value).to be_nil
  end

  it "allows to set a max value" do
    render_inline(described_class.new(90, max: 100))

    expect(page).to have_css "progress[max='100']"
  end

  it "allows to specify a color as a Symbol" do
    render_inline(described_class.new(color: :primary))

    expect(page).to have_css "progress.is-primary"
  end

  it "allows to specify a size as a Symbol" do
    render_inline(described_class.new(size: :small))

    expect(page).to have_css "progress.is-small"
  end

  it "allows to set an id" do
    render_inline(described_class.new(id: "my-id"))

    expect(page).to have_css "progress#my-id"
  end

  it "allows to set data attributes" do
    render_inline(described_class.new(data: {foo: :bar}))

    expect(page).to have_css "progress[data-foo='bar']"
  end
end
