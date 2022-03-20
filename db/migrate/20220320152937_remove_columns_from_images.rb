class RemoveColumnsFromImages < ActiveRecord::Migration[7.0]
  def change
    remove_column :images, :Product_Id, :integer
    remove_column :images, :Url, :string
  end
end
