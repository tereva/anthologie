class Livre < ApplicationRecord

 belongs_to :auteur
 belongs_to :categorie

 validates :titre, presence: true, length: { minimum: 5 }
 validates :texte, presence: true, length: { minimum: 5 }


end
