class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.column :name, :string
      t.column :rating, :integer
      t.column :year, :integer
      t.column :genre, :string
      t.column :length, :integer
      
    end
  end
end
