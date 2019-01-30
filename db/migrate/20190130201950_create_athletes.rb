class CreateAthletes < ActiveRecord::Migration[5.1]
  def change
    create_table :athletes do |t|
      t.float :score
      t.integer :status
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
