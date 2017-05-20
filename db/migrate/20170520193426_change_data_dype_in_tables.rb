class ChangeDataDypeInTables < ActiveRecord::Migration[5.0]
  def change
    change_column :phones, :three_g, :text
    change_column :phones, :four_g, :text
    change_column :tablets, :three_g, :text
    change_column :tablets, :four_g, :text
  end
end
