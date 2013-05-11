class RequireFeelingReferences < ActiveRecord::Migration
  def change
    change_column :feelings, :user_id, :integer, null: false
    change_column :feelings, :word_id, :integer, null: false
  end
end