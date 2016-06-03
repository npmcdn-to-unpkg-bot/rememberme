class Memorial < ActiveRecord::Base
   extend FriendlyId
   friendly_id :full_name, use: :slugged
   def should_generate_new_friendly_id?
      new_record?
   end


   belongs_to :user
   has_many :posts, dependent: :destroy


   validates :first_name, :last_name, :dob, :dod, presence: true 


   def full_name
      "#{first_name} #{last_name}"
   end
end
