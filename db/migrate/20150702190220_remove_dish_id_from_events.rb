class RemoveDishIdFromEvents < ActiveRecord::Migration
  def change
    remove_reference :events, :dish, index: true, foreign_key: true
  end
end
