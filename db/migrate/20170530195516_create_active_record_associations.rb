class CreateActiveRecordAssociations < ActiveRecord::Migration[5.0]
  def change
    remove_column :phones, :developer, :string
    remove_column :tablets, :developer, :string
    remove_column :transformers, :developer, :string
    remove_column :watches, :developer, :string
    add_reference :phones, :developer, foreign_key: true
    add_reference :tablets, :developer, foreign_key: true
    add_reference :transformers, :developer, foreign_key: true
    add_reference :watches, :developer, foreign_key: true
  end
end
