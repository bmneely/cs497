class Blog < ActiveRecord::Base
  has_many :posts
  belongs_to :store
end
