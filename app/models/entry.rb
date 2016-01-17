class Entry < ActiveRecord::Base
  belongs_to :category
  mount_uploader :avatar, AvatarUploader
end
