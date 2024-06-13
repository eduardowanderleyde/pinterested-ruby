class AddAttachmentImageToPins < ActiveRecord::Migration[6.1]
  def up
    change_table :pins do |t|
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at
    end
  end

  def down
    remove_column :pins, :image_file_name
    remove_column :pins, :image_content_type
    remove_column :pins, :image_file_size
    remove_column :pins, :image_updated_at
  end
end
