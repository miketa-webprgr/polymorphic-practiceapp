class AddProfilePictureToTags < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :profile_picture, :string
  end
end
