class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :slug
      t.string :name
      t.string :description
      t.string :rating
      t.datetime :release_dates
      t.string :background_images
      t.string :clip
      t.string :platforms
      t.string :genres
      t.integer :api_id
      t.string :publisher

      t.timestamps
    end
  end
end
