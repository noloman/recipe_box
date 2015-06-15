class Recipe < ActiveRecord::Base
    has_many :ingredients
    has_many :directions
    belongs_to :user
    validates :title, :description, :image, presence: true

    accepts_nested_attributes_for :ingredients
    accepts_nested_attributes_for :directions

    has_attached_file :image, :styles => { :medium => "400x400#" },
    :default_url => "tarta-de-queso-y-brevas-2.jpg"
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
