class CreateBlogComments < ActiveRecord::Migration
  def change
    create_table :blog_comments do |t|
      t.integer :blogpost_id
      t.text :comment

      t.timestamps
    end
  end
end
