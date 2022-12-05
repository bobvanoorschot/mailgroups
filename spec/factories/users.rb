FactoryBot.define do
  factory :user do
    email { 'user@example.com'}
    confirmed_at { DateTime.current }
  end
end
