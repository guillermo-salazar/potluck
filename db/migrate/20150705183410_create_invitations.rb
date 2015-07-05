class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.integer :sender_id
      t.integer :recipient_id
      t.date :sent_at
      t.references :event, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
