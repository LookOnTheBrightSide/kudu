class Card < ApplicationRecord
	belongs_to :user
	has_attached_file :image, styles: { large: "600x600", medium: "300x300>", thumb: "200x200>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
