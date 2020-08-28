class Type < ApplicationRecord
  belongs_to :taggable, polymorphic: true
end
