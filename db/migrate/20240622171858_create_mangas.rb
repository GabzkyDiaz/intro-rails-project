class CreateMangas < ActiveRecord::Migration[7.1]
  def change
    create_table :mangas do |t|
      t.string :title
      t.text :synopsis
      t.integer :chapters
      t.float :rating
      t.string :image_url

      t.timestamps
    end
  end
end
