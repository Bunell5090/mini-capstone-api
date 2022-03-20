class AddImageIdToImages < ActiveRecord::Migration[7.0]
  def change
    add_column :images, :image_id, :integer
  end
end
