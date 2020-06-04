class Artist < ApplicationRecord
  belongs_to :billboard_chart
  has_many :songs, dependent: :destroy
end
