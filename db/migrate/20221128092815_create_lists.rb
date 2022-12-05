# frozen_string_literal: true

class CreateLists < ActiveRecord::Migration[7.0]
  def change
    create_table :lists do |t|
      t.belongs_to :account, null: false, foreign_key: true
      t.string :name, null: false
      t.string :email, null: false
      t.string :description
      t.boolean :inclusive, default: true, null: false
      t.boolean :archive, default: true, null: false
      t.integer :clean, default: 30, null: false

      t.timestamps
    end

    add_index :lists, :email, unique: true
  end
end
