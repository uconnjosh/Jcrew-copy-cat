class ChageNameOfSessionItemsToItems < ActiveRecord::Migration
  def self.up   
  	rename_table :session_items, :items
  end

  def self.down
  	rename_table :items, :session_items
  end
end
