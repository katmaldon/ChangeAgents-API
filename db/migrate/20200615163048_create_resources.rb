class CreateResources < ActiveRecord::Migration[6.0]
  def change
    create_table :resources do |t|
        t.string :title
        t.string :location
        t.string :image
        t.integer :zip
        t.string :url
        t.string :info

      t.timestamps
    end
  end
end
