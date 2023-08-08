=begin
  To pass some of tests, you need to remove the updated_at and created_at columns from the articles table.
  To do this, you need to create a new migration file and remove the updated_at and created_at columns 
  from the articles table.
=end
class RemoveUpdatedAtAndCreatedAt < ActiveRecord::Migration[6.0]
  def change
    remove_column :articles, :updated_at
    remove_column :articles, :created_at
  end
end
