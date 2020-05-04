class CreateGosipsTags < ActiveRecord::Migration[5.2]
  def change
    create_table :gosips_tags do |t|
      t.belongs_to :gosips, index: true
      t.belongs_to :tags, index: true
      t.timestamps
    end
  end
end
