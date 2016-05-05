class Memorial < ActiveRecord::Base
   belongs_to :user

   validates :first_name,
            presence: true
   validates :last_name,
            presence: true
   validates :dob,
            presence: true
   validates :dod,
            presence: true
end
