class CreateAnimes < ActiveRecord::Migration[7.1]
  def change
    create_table :animes do |t|
      t.string :title
      t.text :synopsis
      t.integer :episodes
      t.float :rating
      t.string :image_url

      t.timestamps
    end
  end
end
