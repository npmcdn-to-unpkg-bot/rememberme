class Post < ActiveRecord::Base
   belongs_to :postable, polymorphic: true
   # belongs_to :text
   # accepts_nested_attributes_for :postable
end
