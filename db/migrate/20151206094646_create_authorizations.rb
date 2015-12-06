class CreateAuthorizations < ActiveRecord::Migration
  def change
    create_table :authorizations do |t|

      t.integer :user_id
      t.string :provider
      t.string :uid
      t.string :token
      t.string :secret
      t.string :profile_page
      t.timestamps null: false
    end
  end
end
