class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.references :athlete, foreign_key: true
      t.references :group, foreign_key: true
      t.integer :status
      
      t.timestamps
    end
  end
end
