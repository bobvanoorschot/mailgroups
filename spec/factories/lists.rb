FactoryBot.define do
  factory :list do
    account { nil }
    name { "My list" }
    email { "group@example.com" }
    description { "Simple description" }
    inclusive { true }
    archive { false }
    clean { 1 }
  end
end