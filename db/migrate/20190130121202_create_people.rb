class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :nome
      t.string :telefone
      t.datetime :dataNascimento

      t.timestamps
    end
  end
end
