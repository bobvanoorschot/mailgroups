# == Schema Information
#
# Table name: lists
#
#  id          :integer          not null, primary key
#  archive     :boolean          default(TRUE), not null
#  clean       :integer          default(30), not null
#  description :string
#  email       :string           not null
#  inclusive   :boolean          default(TRUE), not null
#  name        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  account_id  :integer          not null
#
# Indexes
#
#  index_lists_on_account_id  (account_id)
#  index_lists_on_email       (email) UNIQUE
#
# Foreign Keys
#
#  account_id  (account_id => accounts.id)
#
FactoryBot.define do
  factory :list do
    account
    name { "My list" }
    email { "group@example.com" }
    description { "Simple description" }
    inclusive { true }
    archive { false }
    clean { 1 }
  end
end
