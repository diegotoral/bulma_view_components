# frozen_string_literal: true

RSpec.describe Bulma::NotificationComponent, type: :component do
  it "renders content within a div tag" do
    render_inline(described_class.new) { "My Content" }

    expect(page).to have_css "div.notification", text: "My Content"
  end

  it "allows to specify the color of the notification" do
    render_inline(described_class.new(color: :link))

    expect(page).to have_css "div.is-link"
  end

  it "allows to make notification color lighter" do
    render_inline(described_class.new(light: true))

    expect(page).to have_css "div.is-light"
  end

  it "is not lighter by default" do
    render_inline(described_class.new)

    expect(page).not_to have_css "div.is-light"
  end
end
