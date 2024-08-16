# frozen_string_literal: true

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'server.rb')

require 'byebug'
require 'capybara'
require 'capybara/rspec'
require 'rspec'

require 'database_cleaner'

Capybara.app = Sinatra::Application

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  # Teste de Banco de dados
  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.strategy = :transaction
  end

  config.before(:each, :js => true) do
    DatabaseCleaner.strategy = :truncation
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end
end
