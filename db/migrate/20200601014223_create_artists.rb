class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :genre
      t.belongs_to :billboard_chart, null: false, foreign_key: true

      t.timestamps
    end
  end
end
