class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.references :artist, foreign_key: true
      t.string :artist_image

      t.timestamps
    end
  end
end
