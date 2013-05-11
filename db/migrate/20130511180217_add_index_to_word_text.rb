class AddIndexToWordText < ActiveRecord::Migration
  def change
    change_column :words, :text, :string, null: false, limit: 64 # for faster index
    add_index :words, :text, unique: true
  end
end