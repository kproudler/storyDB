class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :comment
      t.integer :user_id
      t.integer :movie_id
      
      t.timestamps
    end

    add_index :reviews, :user_id
    add_index :reviews, :movie_id
    add_index :reviews, [:user_id, :movie_id], unique: true
  end
end
