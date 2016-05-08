class RemoveDescriptonFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :descripton, :text
  end
end
