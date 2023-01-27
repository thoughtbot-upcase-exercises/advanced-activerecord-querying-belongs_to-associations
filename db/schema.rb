class CreateSchema < ActiveRecord::Migration[7.0]
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
