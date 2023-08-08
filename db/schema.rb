# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_08_08_022844) do

  create_table "articles", force: :cascade do |t|
    t.string "title", limit: 40
    t.string "content"
    t.string "author"
    t.string "category"
    t.date "published_at"
  end

end
# this file is created by rails g model Article title:string content:string author:string category:string published_at:datetime field are as mention in the read me file