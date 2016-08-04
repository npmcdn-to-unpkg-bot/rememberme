class Picture < ActiveRecord::Base
   has_many :posts, as: :postable, dependent: :destroy
   mount_uploader :image, ImageUploader
end
