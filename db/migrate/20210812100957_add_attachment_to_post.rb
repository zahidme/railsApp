class AddAttachmentToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :attachment, :string
  end
end
