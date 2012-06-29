class AddAccessTokenToLinks < ActiveRecord::Migration
  def self.up
    add_column :links, :access_token, :string, :null => false
  end

  def self.down
    remove_column :links, :access_token
  end
end
