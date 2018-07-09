class CreateLivres < ActiveRecord::Migration[5.2]
  def change
    create_table :livres do |t|
      t.string :titre
      t.string :auteur
      t.string :categorie
      t.text :texte

      t.timestamps
    end
  end
end
