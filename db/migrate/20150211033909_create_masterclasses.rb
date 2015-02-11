class CreateMasterclasses < ActiveRecord::Migration
  def change
    create_table :masterclasses do |t|
      t.date :date
      t.text :description
      t.timestamps null: false
    end
  end
end
