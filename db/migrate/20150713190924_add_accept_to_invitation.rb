class AddAcceptToInvitation < ActiveRecord::Migration
  def change
    add_column :invitations, :accept, :boolean
  end
end
