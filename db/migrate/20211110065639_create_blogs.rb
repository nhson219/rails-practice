class CreateBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :blogs do |t|
      t.string :title, null: false
      t.string :description
      t.text :content
      t.timestamps
    end
  end
end
