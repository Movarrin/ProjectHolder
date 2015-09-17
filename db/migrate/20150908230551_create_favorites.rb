class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.string :name
      t.string :marvel_id
      t.references :user

      t.timestamps null: false
    end
  end
end
