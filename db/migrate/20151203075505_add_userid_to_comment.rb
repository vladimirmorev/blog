class AddUseridToComment < ActiveRecord::Migration
  def change
    add_reference(:comments, :user, foreign_key: true, index: true)
  end
end
