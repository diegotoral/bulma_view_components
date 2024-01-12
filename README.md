# BulmaViewComponents

`BulmaViewComponents` is a set of components for the [Bulma](https://bulma.io) CSS framework using [ViewComponent](https://viewcomponent.org/).

## Installation

Install the gem and add to the application's Gemfile by executing:

    bundle add bulma_view_components

If bundler is not being used to manage dependencies, install the gem by executing:

    gem install bulma_view_components

## Preview

https://bulma-view-components.fly.dev/

## Dependencies

TODO: Write dependencies list

## Usage

`BulmaViewComponents` can be used directly:

```erb
<%= render Bulma::TitleComponent.new(size: 1) do %>
  Hi, there
<% end %>
```

or more clearer through helpers:

```erb
<%= bulma_title(size: 1) do %>
  Hi, there
<% end %>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/diegotoral/bulma_view_components.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
