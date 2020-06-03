class Artist < ApplicationRecord
  belongs_to :billboard_chart
end

has_many :songs