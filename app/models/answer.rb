class Answer < ApplicationRecord
  belongs_to :poll
  belongs_to :user
  acts_as_votable
end
