class Answer < ApplicationRecord
  belongs_to :poll
  
  acts_as_votable
end
