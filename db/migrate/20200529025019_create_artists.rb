class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :album
      t.belongs_to :chart, null: false, foreign_key: true

      t.timestamps
    end
  end
end
