class Video < ActiveRecord::Base
   has_many :posts, as: :postable, dependent: :destroy
   mount_uploader :video_file, VideoUploader
end
