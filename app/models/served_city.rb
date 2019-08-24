class ServedCity < ApplicationRecord
  extend FriendlyId
  friendly_id :name
  has_rich_text :body
end
