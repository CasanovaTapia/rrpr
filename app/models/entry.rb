class Entry < ActiveRecord::Base
  belongs_to :category
  mount_uploader :avatar, AvatarUploader
  mount_uploader :shoti, AvatarUploader
  mount_uploader :shotii, AvatarUploader
  mount_uploader :shotiii, AvatarUploader
  mount_uploader :thumb, AvatarUploader

  def media?
    category_id == Category.first.id
  end

  def dev?
    category_id == Category.last.id
  end
end
