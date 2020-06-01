class CreateBillboardCharts < ActiveRecord::Migration[6.0]
  def change
    create_table :billboard_charts do |t|
      t.string :title
      
      has_many :artists

      t.timestamps
    end
  end
end
