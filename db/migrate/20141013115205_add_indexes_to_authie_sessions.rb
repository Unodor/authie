class AddIndexesToAuthieSessions < ActiveRecord::Migration
  def change
    add_column :authie_sessions, :user_type, :string
    add_index :authie_sessions, :token, :length => 10
    add_index :authie_sessions, :browser_id, :length => 10
    add_index :authie_sessions, :user_id
  end
end
