class Post < ActiveRecord::Base
   belongs_to :postable, polymorphic: true
   belongs_to :memorial
   belongs_to :user
   validates :user_id, :memorial_id, presence: true 
end
