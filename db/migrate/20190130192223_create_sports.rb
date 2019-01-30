class CreateSports < ActiveRecord::Migration[5.1]
  def change
    create_table :sports do |t|
      t.string :nome
      t.text :descricao
      t.text :regra

      t.timestamps
    end
  end
end
