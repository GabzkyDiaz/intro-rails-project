class LightNovel < ApplicationRecord
  has_many :authorships, as: :authorshipable
  has_many :authors, through: :authorships
end
