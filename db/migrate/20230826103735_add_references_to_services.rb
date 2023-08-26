class AddReferencesToServices < ActiveRecord::Migration[7.0]
  def change
    add_reference :services, :user, null: false, foreign_key: true
    add_reference :services, :category, null: false, foreign_key: true
  end
end