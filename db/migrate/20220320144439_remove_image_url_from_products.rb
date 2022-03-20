class RemoveImageUrlFromProducts < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :Image_url, :string
  end
end
