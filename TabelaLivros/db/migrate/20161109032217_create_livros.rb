class CreateLivros < ActiveRecord::Migration[5.0]
  def change
    create_table :livros do |t|
      t.string :titulo
      t.string :author
      t.integer :edition_year

      t.timestamps
    end
  end
end
