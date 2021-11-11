class AddForeignKeyBlogUser < ActiveRecord::Migration[6.1]
  def change
    add_column :blogs, :user_id, :bigint
    add_foreign_key :blogs, :users
  end

  def down
    remove_column :blogs, :user_id
    remove_foreign_key :blogs, :users
  end
end
