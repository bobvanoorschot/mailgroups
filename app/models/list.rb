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
class List < ApplicationRecord
  belongs_to :account
  has_many :list_members
  has_many :archive_emails

  # @param [String] inbound_email check if there is a member with this email address
  def none?(inbound_email)
    return false unless inclusive

    list_members.where(email: inbound_email).count.positive?
  end
end
