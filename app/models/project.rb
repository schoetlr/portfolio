class Project < ActiveRecord::Base
  has_many :project_taggings
  has_many :tags, through: :project_taggings

  validates :importance, inclusion: { in: 0..10 }

  has_attached_file :image, :styles => { :medium => "300x300", :thumb => "100x100" }
  
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
