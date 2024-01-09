## [Unreleased]

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
