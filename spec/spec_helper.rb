require "active_record"
require "database_cleaner"
require "factory_girl"

Dir.glob(File.expand_path("../../app/models/*.rb", __FILE__)) do |model|
  require model
end

ActiveRecord::Base.establish_connection(
  adapter:  "postgresql",
  database: "upcase_exercise",
  encoding: "utf8",
  host: "localhost",
  min_messages: "warning"
)

class CreateSchema < ActiveRecord::Migration
  def self.up
    create_table :people, force: true do |table|
      table.string :name, null: false
      table.integer :role_id, null: false
      table.integer :location_id
      table.integer :manager_id
      table.integer :salary, null: false
    end

    create_table :roles, force: true do |table|
      table.string :name, null: false
      table.boolean :billable, null: false
    end

    create_table :locations, force: true do |table|
      table.string :name, null: false
      table.integer :region_id, null: false
    end

    create_table :regions, force: true do |table|
      table.string :name, null: false
    end
  end
end

CreateSchema.suppress_messages { CreateSchema.migrate(:up) }

FactoryGirl.define do
  sequence :name do |value|
    "name#{value}sequence"
  end

  factory :location do
    name
    region
  end

  factory :person do
    location
    name
    role
    salary 0
  end

  factory :region do
    name
  end

  factory :role do
    name
    billable true
  end
end

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
