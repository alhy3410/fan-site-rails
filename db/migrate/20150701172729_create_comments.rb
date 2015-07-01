class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.column :author, :string
      t.column :comment, :string
    end
  end
end
