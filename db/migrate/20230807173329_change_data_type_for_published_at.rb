class ChangeDataTypeForPublishedAt < ActiveRecord::Migration[6.0]
  def change
    change_column :articles, :published_at, :string
  end
end
