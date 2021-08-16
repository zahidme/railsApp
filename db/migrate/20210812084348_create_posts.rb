class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|

      t.column :title, :string, :limit => 32, :null => false
      t.column :user_id, :integer
      t.column :description, :text
      

      t.timestamps
    end
  end
end
