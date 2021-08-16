class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|

      t.column :user_id, :integer
      t.column :post_id, :integer
      t.column :description, :text

      t.timestamps
    end
  end
end
