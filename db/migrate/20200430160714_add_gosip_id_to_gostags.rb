class AddGosipIdToGostags < ActiveRecord::Migration[5.2]
  def change
    add_reference :gostags, :gosip, foreign_key: true
  end
end
