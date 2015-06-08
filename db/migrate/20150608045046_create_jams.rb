class CreateJams < ActiveRecord::Migration
  def change
    create_table :jams do |t|
      t.string :jam_name
      t.text :jam_description
      t.string :jam_url
      t.text :jam_embed
      t.integer :jamkey_id
      t.integer :jamgenre_id
      t.integer :user_id

      t.timestamps
    end
  end
end
