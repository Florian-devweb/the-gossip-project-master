class Gosip < ApplicationRecord
  has_many :gostags
  has_many :tags, through: :gostags
end
