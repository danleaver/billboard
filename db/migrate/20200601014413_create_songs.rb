class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :song_title
      t.string :album_name
      t.belongs_to :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
