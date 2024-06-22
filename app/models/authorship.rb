class Authorship < ApplicationRecord
  belongs_to :author
  belongs_to :authorshipable, polymorphic: true
end
