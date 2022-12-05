# frozen_string_literal: true

FactoryBot.define do
  factory :archive_email do
    list { nil }
    sender { 'MyString' }
    subject { 'MyString' }
    body { 'MyText' }
    raw_body { 'MyText' }
  end
end
