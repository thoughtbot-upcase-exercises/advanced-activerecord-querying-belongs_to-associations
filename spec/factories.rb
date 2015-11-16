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
