class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.string :director
      t.integer :rating
      t.integer :user_id

      t.timestamps
    end

    add_index :movies, :user_id
  end
end
