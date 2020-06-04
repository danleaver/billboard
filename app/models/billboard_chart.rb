class BillboardChart < ApplicationRecord
  has_many :artists, dependent: :destroy
end
