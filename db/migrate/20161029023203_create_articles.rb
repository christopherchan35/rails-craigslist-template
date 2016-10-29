class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :body
      t.string :email
      t.float :price
      t.references :category

      t.timestamps
    end
  end
end
