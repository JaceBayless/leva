# LEVA - Rails Engine Development Guide

## Commands
- Run all tests: `bin/rails test`
- Run single test: `bin/rails test path/to/test_file.rb`
- Run specific test: `bin/rails test path/to/test_file.rb:line_number`
- Run linting: `bin/rubocop`
- Start dummy app: `cd test/dummy && bin/rails server`

## Code Style
- Ruby 3.2.0, Rails 7.2
- 2-space indentation, 120 character line length
- Follow Rails Omakase Rubocop style guide
- Frozen string literals by default
- YARD documentation for all classes and methods
- Minitest for testing (not RSpec)
- Test naming: `test_{description}` methods in `{ModelName}Test` classes
- Model annotations with the annotate gem
- Rails engine with isolated `Leva` namespace
- Place evaluators in `app/evals` and runners in `app/runners`

## Project Organization
This is a Rails engine for evaluating language models with dataset experiments.