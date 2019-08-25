class ServedCity < ApplicationRecord
  extend FriendlyId
  friendly_id :name
  has_rich_text :body

  has_one_attached :hero_image
end
