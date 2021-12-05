class Answer < ApplicationRecord
  belongs_to :poll

  validates :title, presence: true
  
  acts_as_votable
end
