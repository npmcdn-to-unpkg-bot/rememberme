class Memorial < ActiveRecord::Base
   extend FriendlyId
   friendly_id :full_name, use: :slugged
   def should_generate_new_friendly_id?
      new_record?
   end


   belongs_to :user
   has_many :posts, dependent: :destroy


   validates :first_name, :last_name, :dob, :dod, presence: true

   def first_thumb
      if self.posts.any? && self.posts.where(postable_type: "Picture").any?
         self.posts.where(postable_type: "Picture").collect(&:postable).first.image.thumb.url
      else
         "thumb_Hydrangeas.jpg"
      end
   end

   def full_name
      "#{first_name} #{last_name}"
   end
end
