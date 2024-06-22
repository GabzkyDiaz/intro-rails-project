class Author < ApplicationRecord
  has_many :authorships
  has_many :animes, through: :authorships, source: :authorshipable, source_type: 'Anime'
  has_many :mangas, through: :authorships, source: :authorshipable, source_type: 'Manga'
  has_many :light_novels, through: :authorships, source: :authorshipable, source_type: 'LightNovel'
end
