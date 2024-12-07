class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :summary
      t.string :actors
      t.string :director

      t.timestamps
    end
  end
end
