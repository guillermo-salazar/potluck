class CreateJoinTableAllergyUser < ActiveRecord::Migration
  def change
    create_join_table :allergies, :users do |t|
      # t.index [:allergy_id, :user_id]
      # t.index [:user_id, :allergy_id]
    end
  end
end
