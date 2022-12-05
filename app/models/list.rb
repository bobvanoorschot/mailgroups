class List < ApplicationRecord
  belongs_to :account
  has_many :list_members
end
