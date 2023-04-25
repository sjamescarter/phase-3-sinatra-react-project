class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :name
      t.text :comment
      t.integer :post_id
      t.timestamps
    end
  end
end
