class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :nome
      t.string :descricao
      t.references :sport, foreign_key: true
      t.references :fundador#, foreign_key: true
      t.text :estatuto

      t.timestamps
    end
  end
end
