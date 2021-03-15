# frozen_string_literal: true

SimpleCov.start('rails') do
  add_filter 'config'
  add_filter 'spec'
  add_filter 'db'
end
