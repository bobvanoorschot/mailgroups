# == Schema Information
#
# Table name: list_members
#
#  id         :integer          not null, primary key
#  email      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  list_id    :integer          not null
#
# Indexes
#
#  index_list_members_on_list_id            (list_id)
#  index_list_members_on_list_id_and_email  (list_id,email) UNIQUE
#  index_list_members_on_name               (name) UNIQUE
#
# Foreign Keys
#
#  list_id  (list_id => lists.id)
#
class ListMember < ApplicationRecord
  belongs_to :list
end
