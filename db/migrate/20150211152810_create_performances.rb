class CreatePerformances < ActiveRecord::Migration
  def change
    create_table :performances do |t|
      t.belongs_to :user
      t.belongs_to :masterclass
      t.string :composer
      t.string :title
      t.text :description
      t.timestamps null: false
    end

    add_index :performances, :user_id
    add_index :performances, :masterclass_id
  end
end
