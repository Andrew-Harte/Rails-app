class AddPostsToComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :post, foreign_key: true
    add_column :comments, :text, :string
  end
end
