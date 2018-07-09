class Livre < ApplicationRecord
 validates :titre, presence: true, length: { minimum: 5 }
 validates :texte, presence: true, length: { minimum: 5 }
end
