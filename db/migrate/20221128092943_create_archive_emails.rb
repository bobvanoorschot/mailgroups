class CreateArchiveEmails < ActiveRecord::Migration[7.0]
  def change
    create_table :archive_emails do |t|
      t.belongs_to :list, null: false, foreign_key: true
      t.string :sender
      t.string :subject
      t.text :body
      t.text :raw_body

      t.timestamps
    end
  end
end
