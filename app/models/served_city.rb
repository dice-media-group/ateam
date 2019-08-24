class ServedCity < ApplicationRecord
  extend FriendlyId
  friendly_id :name
end
