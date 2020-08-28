class Player < ApplicationRecord
  has_many :types, as: :taggable
end
