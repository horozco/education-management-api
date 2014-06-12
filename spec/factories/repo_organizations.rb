# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :repo_organization, :class => 'Repo::Organization' do
    name "MyString"
    address "MyString"
    email "MyString"
  end
end
