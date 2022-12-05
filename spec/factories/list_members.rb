# frozen_string_literal: true

FactoryBot.define do
  factory :list_member do
    list { nil }
    email { 'MyString' }
    name { 'MyString' }
  end
end
