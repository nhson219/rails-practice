class AddForeignKeyComment < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :blog_id, :bigint
    add_foreign_key :comments, :blogs

    add_column :comments, :user_id, :bigint
    add_foreign_key :comments, :users
  end

  def down
    remove_column :comments, :blog_id
    remove_foreign_key :comments, :blogs
    remove_column :comments, :user_id
    remove_foreign_key :comments, :users
  end
end
