class CreateR1votes < ActiveRecord::Migration[5.0]
  def change
    create_table :r1votes do |t|
      t.references :user, null: false
      t.references :pitch, null: false
      t.timestamps
    end
  end
end
