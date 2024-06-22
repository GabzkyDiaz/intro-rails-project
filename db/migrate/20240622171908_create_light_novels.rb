class CreateLightNovels < ActiveRecord::Migration[7.1]
  def change
    create_table :light_novels do |t|
      t.string :title
      t.text :synopsis
      t.integer :volumes
      t.float :rating
      t.string :image_url

      t.timestamps
    end
  end
end
