require "active_record"
require "database_cleaner"
require "factory_girl"

Dir.glob(File.expand_path("../../app/models/*.rb", __FILE__)) do |model|
  require model
end

require_relative "factories"
require_relative "../db/schema"

ActiveRecord::Base.establish_connection(
  adapter:  "postgresql",
  database: "upcase_exercise",
  encoding: "utf8",
  host: "localhost",
  min_messages: "warning"
)

CreateSchema.suppress_messages { CreateSchema.migrate(:up) }

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods

  config.before(:suite) do
    DatabaseCleaner.clean_with(:deletion)
  end

  config.before(:each) do
    DatabaseCleaner.strategy = :transaction
  end

  config.before(:each, js: true) do
    DatabaseCleaner.strategy = :deletion
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end
end
