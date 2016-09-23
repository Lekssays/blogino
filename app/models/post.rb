class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	validates :title, presence: true, length: {minimum: 5}
	validates :body, presence: true
  	acts_as_taggable
	has_attached_file :image
	validates_attachment :image, content_type: { content_type: [ "image/jpg", "image/jpeg", "image/png" ] }
end