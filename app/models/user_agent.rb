class UserAgent < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
