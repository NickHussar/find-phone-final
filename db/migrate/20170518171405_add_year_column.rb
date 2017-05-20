class AddYearColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :phones, :m_year, :integer
    add_column :tablets, :m_year, :integer
    add_column :watches, :m_year, :integer
    add_column :transformers, :m_year, :integer
  end
end
