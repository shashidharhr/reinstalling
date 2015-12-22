class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author
      t.text :body
      t.string :post
      t.string :references

      t.timestamps null: false
    end
  end
end
