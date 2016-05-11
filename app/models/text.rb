class Text < ActiveRecord::Base
   has_many :memorials, through: :posts, source: :postable, source_type: "Memorial"
   has_many :posts, as: :postable, dependent: :destroy 
end
