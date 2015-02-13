class AddPositionToPerformances < ActiveRecord::Migration
  def change
    add_column :performances, :position, :integer
  end
end
