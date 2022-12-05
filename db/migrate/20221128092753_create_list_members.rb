class CreateListMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :list_members do |t|
      t.belongs_to :list, null: false, foreign_key: true
      t.string :email
      t.string :name

      t.timestamps
    end

    add_index :list_members, [:list_id, :email], unique: true
    add_index :list_members, :name, unique: true
  end
end
