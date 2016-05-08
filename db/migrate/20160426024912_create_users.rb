class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :image
      t.text :description
      t.string :video
      t.string :job
      t.integer :role, null: false

      t.timestamps null: false
    end
  end
end
