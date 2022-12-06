class List < ApplicationRecord
  belongs_to :account
  has_many :list_members

  # @param [String] inbound_email check if there is a member with this email address
  def none?(inbound_email)
    return false unless inclusive

    list_members.where(email: inbound_email).count.positive?
  end
end
