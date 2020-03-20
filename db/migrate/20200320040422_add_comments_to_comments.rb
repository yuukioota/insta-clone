class AddCommentsToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :comment, :string
    change_column :comments, :comment, :string, :null => false
  end
end
