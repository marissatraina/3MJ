class CreateR2votes < ActiveRecord::Migration[5.0]
  def change
    create_table :r2votes do |t|
      t.references :user, null: false
      t.references :pitch, null: false
      t.integer :rank, null: false
      t.timestamps
    end
  end
end
