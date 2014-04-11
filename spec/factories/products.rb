# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    name ""
    description "MyString"
    category_id 1
  end
end
