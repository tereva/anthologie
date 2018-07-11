class AddAuteurRefToLivres < ActiveRecord::Migration[5.2]
  def change
    add_reference :livres, :auteur, foreign_key: true
    add_reference :livres, :categorie, foreign_key: true
  end
end
