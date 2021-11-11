class CreateAdmins < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email, null: false, uniqueness: true
      t.boolean :is_admin, default: false
      t.boolean :status, default: true # true : non-block, false: block
      t.timestamps
    end
  end

  def down
    drop_table :admins
  end
end
