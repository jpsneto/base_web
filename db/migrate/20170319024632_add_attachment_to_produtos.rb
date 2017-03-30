class AddAttachmentToProdutos < ActiveRecord::Migration
  def change
    add_column :produtos, :attachment, :string
  end
end
