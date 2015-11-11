class Role < ActiveRecord::Base
  has_many :people
end
