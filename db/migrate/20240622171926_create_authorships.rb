class CreateAuthorships < ActiveRecord::Migration[7.1]
  def change
    create_table :authorships do |t|
      t.references :author, null: false, foreign_key: true
      t.references :authorshipable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
