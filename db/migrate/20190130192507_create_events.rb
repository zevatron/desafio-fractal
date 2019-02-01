class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :descricao
      t.datetime :start_time
      t.datetime :end_time
      t.string :local
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
