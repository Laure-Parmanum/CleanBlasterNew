class AddNameToServices < ActiveRecord::Migration[7.0]
  def change
    add_column :services, :name, :string
    add_column :services, :description, :string
  end
end
