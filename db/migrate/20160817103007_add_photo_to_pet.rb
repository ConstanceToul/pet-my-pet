class AddPhotoToPet < ActiveRecord::Migration[5.0]
  def change
    add_column :pets, :photo, :string
  end
end
