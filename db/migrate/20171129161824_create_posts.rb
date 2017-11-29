# content in my post table
class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :word
      t.string :picture
      t.string :link

      t.timestamps
    end
  end
end
