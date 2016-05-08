class ModifyUsers < ActiveRecord::Migration
  def change
  	# add_column :users, :image, :string
  	# add_column :users, :video, :string
  	# add_column :users, :job, :string
  	# add_column :users, :role, :integer
  	remove_column :users, :descripton
  	# add_column :users, :description, :text
  end
end
