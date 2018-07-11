class Categorie < ApplicationRecord
	has_many :livres
	validates :nom, presence: true,
                    length: { minimum: 5 }
end
