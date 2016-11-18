class CreatePitches < ActiveRecord::Migration[5.0]
  def change
    create_table :pitches do |t|
      t.references :user, null: false
      t.integer :round, null: false, default: 1
      t.string :app_name, null: false
      t.text :text, null: false
      t.timestamps
    end
  end
end
