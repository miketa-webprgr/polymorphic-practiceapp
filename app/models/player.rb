class Player < ApplicationRecord
  mount_uploader :profile_picture, ProfilePictureUploader
  include Taggable
end
