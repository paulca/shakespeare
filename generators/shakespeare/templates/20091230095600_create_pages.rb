class CreatePages < ActiveRecord::Migration
  def self.up
    create_table "pages", :force => true do |t|
       t.string   "title"
       t.string   "url"
       t.text     "keywords"
       t.text     "description"
       t.text     "content"
       t.datetime "created_at"
       t.datetime "updated_at"
       t.boolean  "noindex"
       t.boolean  "nofollow"
       t.string   "canonical"
       t.boolean  "enable_canonical"
       t.boolean  "enable_keywords"
     end
    
    add_index :pages, :url
  end

  def self.down
    remove_index :pages, :url
    drop_table :pages
  end
end
