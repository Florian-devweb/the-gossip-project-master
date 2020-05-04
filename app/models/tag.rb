class Tag < ApplicationRecord
  has_many :gostags
  has_many :gosips, through: :gostags
end
