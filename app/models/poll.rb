class Poll < ApplicationRecord
  has_many :answers

  validates :title, presence: true
end