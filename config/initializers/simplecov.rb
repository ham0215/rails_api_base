return unless Rails.env.test?

require 'simplecov'
require 'simplecov-json'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  SimpleCov::Formatter::JSONFormatter,
]
