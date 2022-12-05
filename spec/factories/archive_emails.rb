FactoryBot.define do
  factory :archive_email do
    list { nil }
    sender { "MyString" }
    subject { "MyString" }
    body { "MyText" }
    raw_body { "MyText" }
  end
end
