class User < ActiveRecord::Base
 has_many :memorials
 has_many :posts, dependent: :destroy
 has_secure_password

  before_save :format_user, on: [ :create, :update ]
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }

   def full_name
      "#{first_name} #{last_name}"
   end

   def to_param
      "#{id} #{to_s}".parameterize
   end

   protected
     def format_user
       self.first_name.capitalize!
       self.last_name.capitalize!
       self.email.downcase!
       self
     end

end
