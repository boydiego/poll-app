class User < ApplicationRecord
  has_many :polls, dependent: :destroy
  # has_many :answers, through: :polls
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  acts_as_voter

  def username
    email.split('@')[0].capitalize
  end
  
end
