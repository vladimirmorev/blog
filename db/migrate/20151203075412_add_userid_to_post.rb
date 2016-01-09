class AddUseridToPost < ActiveRecord::Migration
  def change
    add_reference(:posts, :user, foreign_key: true, index: true)
  end
end
