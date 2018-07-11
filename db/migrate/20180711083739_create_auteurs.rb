class CreateAuteurs < ActiveRecord::Migration[5.2]
  def change
    create_table :auteurs do |t|
      t.string :nom
      t.text :bio

      t.timestamps
    end
  end
end
