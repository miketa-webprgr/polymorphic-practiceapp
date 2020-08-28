class Manager < ApplicationRecord
  has_many :types, as: :taggable
end
