class Person < ActiveRecord::Base
  belongs_to :location
  belongs_to :role
  belongs_to :manager, class_name: "Person", foreign_key: :manager_id
  has_many :employees, class_name: "Person", foreign_key: :manager_id

  def self.in_region(region)
    with_regions.where("regions.name = ?", region)
  end

  def self.alphabetically_by_region_and_location
    with_regions.order("regions.name ASC, locations.name ASC, name ASC")
  end

  def self.with_regions
    joins(location: :region)
  end
end
