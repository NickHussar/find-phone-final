class ChangeDateDataType < ActiveRecord::Migration[5.0]
  def change
    remove_column :phones, :m_year, :integer
    remove_column :tablets, :m_year, :integer
    remove_column :watches, :m_year, :integer
    remove_column :transformers, :m_year, :integer
  end
end
