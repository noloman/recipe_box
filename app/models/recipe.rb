class Recipe < ActiveRecord::Base
    has_attached_file :image, :styles => { :medium => "400x400#" },
    :default_url => "tarta-de-queso-y-brevas-2.jpg"
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
