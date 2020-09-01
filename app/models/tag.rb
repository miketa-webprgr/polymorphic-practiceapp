class Tag < ApplicationRecord
  belongs_to :taggable, polymorphic: true

  scope :managers, -> { where(taggable_type: "Manager") }
  scope :players, -> { where(taggable_type: "Player") }
end
