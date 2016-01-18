class Entry < ActiveRecord::Base
  belongs_to :category
  mount_uploader :avatar, AvatarUploader
  mount_uploader :shoti, AvatarUploader
  mount_uploader :shotii, AvatarUploader
  mount_uploader :shotiii, AvatarUploader
end
