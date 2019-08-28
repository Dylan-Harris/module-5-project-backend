class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :title
      t.string :description
      t.string :background_image
      t.string :genre
      t.string :trailer
      t.string :parent_platform

      t.timestamps
    end
  end
end
