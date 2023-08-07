class RemoveUpdatedAtAndCreatedAt < ActiveRecord::Migration[6.0]
  def change
    remove_column :articles, :updated_at
    remove_column :articles, :created_at
  end
end
