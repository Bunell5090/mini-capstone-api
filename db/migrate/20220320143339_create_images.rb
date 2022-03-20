class CreateImages < ActiveRecord::Migration[7.0]
  def change
    create_table :images do |t|
      t.string :Product_Id
      t.string :Url

      t.timestamps
    end
  end
end
