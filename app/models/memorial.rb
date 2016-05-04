class Memorial < ActiveRecord::Base
   belongs_to :user
   validates :first_name, presence: true
end
