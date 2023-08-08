=begin
  In the beginning of the project, the published_at column was created as a datetime data type column, which
  so was I was getting the "2020-02-10T00:00:00.000Z" this when a user where to input a date in the body of the
  request. To fix this, I created a new migration file and changed the data type of the published_at column
  back to a date data type column.
=end
class ChangeDataTypeForPublishedAtBackToTypeDate < ActiveRecord::Migration[6.0]
  def change
    change_column :articles, :published_at, :date
  end
end
