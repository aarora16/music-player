class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :artist
      t.string :album
      t.string :url
      t.string :length

      t.timestamps
    end
  end
end
