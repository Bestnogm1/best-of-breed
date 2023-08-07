class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title, limit: 40
      t.string :content
      t.string :author
      t.string :category
      t.datetime :published_at
      t.timestamps
    end
  end
end
