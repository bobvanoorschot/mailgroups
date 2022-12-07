# == Schema Information
#
# Table name: archive_emails
#
#  id         :integer          not null, primary key
#  body       :text
#  raw_body   :text
#  sender     :string
#  subject    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  list_id    :integer          not null
#
# Indexes
#
#  index_archive_emails_on_list_id  (list_id)
#
# Foreign Keys
#
#  list_id  (list_id => lists.id)
#
class ArchiveEmail < ApplicationRecord
  belongs_to :list
end
