# frozen_string_literal: true

FactoryBot.define do
  factory :account do
    user
    name { 'MyString' }
  end
end
