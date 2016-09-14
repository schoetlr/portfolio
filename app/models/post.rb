class Post < ActiveRecord::Base
  has_many :post_taggings
  has_many :tags, through: :post_taggings
end
