class Project < ActiveRecord::Base
  has_many :project_taggings
  has_many :tags, through: :project_taggings

  validates :importance, inclusion: { in: 0..10 }

  has_attached_file :image, 
                    :styles => { :medium => "300x300", :thumb => "100x100" },
                    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
                    :url => "/system/:attachment/:id/:style/:filename"
  
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/


  def self.with_tag(tag)
    #hacky for now
    #use a query later

    Project.all.to_a.select do |project|
      project.tags.to_a.map{|t| t.name }.include?(tag)
    end

  end
end
