class AddCostToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :cost, :integer
  end
end
