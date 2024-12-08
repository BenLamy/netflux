class ChangeMovieToLikes < ActiveRecord::Migration[7.1]
  def change
    # Rename the column in the likes table
    rename_column :likes, :movies_id, :movie_id

    # Remove the old foreign key constraint
    remove_foreign_key :likes, :movies

    # Add the new foreign key constraint
    add_foreign_key :likes, :movies, column: :movie_id
  end
end
