class RemovePictureUrlFromPets < ActiveRecord::Migration[5.0]
  def change
    remove_column :pets, :picture_url, :string
  end
end
