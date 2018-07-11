# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_07_11_084032) do

  create_table "auteurs", force: :cascade do |t|
    t.string "nom"
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "nom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "livres", force: :cascade do |t|
    t.string "titre"
    t.string "auteur"
    t.string "categorie"
    t.text "texte"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "auteur_id"
    t.integer "categorie_id"
    t.index ["auteur_id"], name: "index_livres_on_auteur_id"
    t.index ["categorie_id"], name: "index_livres_on_categorie_id"
  end

end
