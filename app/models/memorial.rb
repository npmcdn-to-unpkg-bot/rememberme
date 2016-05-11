class Memorial < ActiveRecord::Base
   extend FriendlyId
   friendly_id :full_name, use: :slugged
   def should_generate_new_friendly_id?
      new_record?
   end


   belongs_to :user
   has_many :posts, as: :postable, dependent: :destroy 
   has_many :texts, through: :posts


   validates :first_name,
            presence: true
   validates :last_name,
            presence: true
   validates :dob,
            presence: true
   validates :dod,
            presence: true


   def full_name
      "#{first_name} #{last_name}"
   end
end
