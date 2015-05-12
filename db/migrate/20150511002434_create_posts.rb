class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :title
      t.text :author
      t.date :date_published
      t.text :content

      t.timestamps null: false
    end
  end
end
