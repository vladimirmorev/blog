class AddApprovedFieldToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :approved, :boolean, default: false
  end
end
