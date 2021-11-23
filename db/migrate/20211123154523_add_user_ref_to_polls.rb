class AddUserRefToPolls < ActiveRecord::Migration[6.1]
  def change
    add_reference :polls, :user, foreign_key: true
  end
end
