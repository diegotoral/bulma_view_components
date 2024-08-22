## [Unreleased]

- Updated `Bulma::TitleComponent` previews to use helper method
- Updated `Bulma::ImageComponent` previews to use Ruby logo
- Updated `Bulma::ButtonComponent` loading preview to use helper method
- Updated `Bulma::ButtonComponent` fullwidth preview to use helper method
- Updated `Bulma::ButtonComponent` default preview to use helper method
- Updated `Bulma::TagComponent` to accept label as first positional argument
- Install Ionicons packaged

## [0.4.1] - 2024-08-21

- Bumped gem version to 0.4.1

## [0.4.0] - 2024-08-21

- Updated Bulma to version 1.0.2
- Updated delete component preview to use helper
- Added colors preview for notification component
- Added notiication component to helpers mapping
- Updated `Bulma::NotificationComponent` to use template
- Added support to add a delete button within `Bulma::NotificationComponent`
- Created basic component `Bulma::NotificationComponent`
- Created basic `Bulma::SubtitleComponent`
- Converted preview for `Bulma::BoxComponent` to use view file
- Converted default preview for `Bulma::ProgressBarComponent` to use view file
- Added support to specify content as first arggument to `Bulma::TitleComponent`
- Drop supoort for Ruby 2,7
- Updated capybara to latest version 3.40.0
- Updated `ImageComponentPreview` to include sizes exemple
- Created new component `Bulma::ImageComponent`
- Created previews for `Bulma::ProgressBarComponent`
- Created new component `Bulma::ProgressBarComponent`
- Created previews for `Bulma::ButtonsComponent`
- Created new component `Bulma::ButtonsComponent`
- Updated `Elements::ButtonComponentPreview` to pass content as parameter
- Added support to specify value as parameter to `Bulma::ButtonComponent`
- Created `Bulma::DeleteComponent` with preview class and helper
- Added support to size for `Bulma::ContentComponent`
- Created basic `Bulma::ContentComponent` with preview class
- Updated 'demo/Gemfile.lock' to latest version of the gem

## [0.3.0] - 2023-01-05

- Updated previews to use new component helpers
- Create component helper methods for block, box, button, tag and title components.
- Added app/helpers to autoload paths of the engine.
- Created `Bulma::ButtonComponent` and associated preview class.

## [0.2.0] - 2023-01-03

- Created new `Bulma::BlockComponent` and associated preview class
- Updated structure for preview classes to reflect Bulma's docs. Removed `Bulma` namespace.
- Deployed demo application to Fly.io
- Tweaker default Dockerfile for demo app to work with the current project structure
- Created `Bulma::TagComponent` preview class
- Updated workflow configuration to remove Ruby 3.3 due to errors
- Updated default workflow to lint files with standardrb
- Added standardrb for linting and keeping styles consistent

## [0.1.0] - 2023-11-14

- Initial release
