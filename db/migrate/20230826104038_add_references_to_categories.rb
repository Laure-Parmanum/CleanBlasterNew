class AddReferencesToCategories < ActiveRecord::Migration[7.0]
  def change
    add_reference :categories, :service, null: false, foreign_key: true
  end
end
