class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :title
      t.text :text
      t.text :image

      t.timestamps
    end
  end
end
