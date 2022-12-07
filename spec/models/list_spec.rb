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
require 'rails_helper'

RSpec.describe List, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
