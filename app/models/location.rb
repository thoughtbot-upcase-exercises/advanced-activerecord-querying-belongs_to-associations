class Location < ActiveRecord::Base
  belongs_to :region
  has_many :people
end
