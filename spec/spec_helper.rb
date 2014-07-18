RACK_ENV = 'test' unless defined?(RACK_ENV)
require File.expand_path(File.dirname(__FILE__) + "/../config/boot")

RSpec.configure do |conf|
  conf.include Rack::Test::Methods

  conf.before(:each) do
    # DatabaseCleaner.orm = :mongoid
    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.clean
    # Rails.cache.clear
  end
  conf.include Capybara::DSL
  # conf.include Padrino::Application
end

# You can use this method to custom specify a Rack app
# you want rack-test to invoke:
#
#   app Todo::App
#   app Todo::App.tap { |a| }
#   app(Todo::App) do
#     set :foo, :bar
#   end
#
def app(app = nil, &blk)
  @app ||= block_given? ? app.instance_eval(&blk) : app
  @app ||= Padrino.application
end

require 'factory_girl'
Dir[File.dirname(__FILE__)+"/factories/*.rb"].each {|file| require file }