class CreatePitches < ActiveRecord::Migration[5.0]
  def change
    create_table :pitches do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.integer :creator_id, null: false

      t.timestamps
    end
  end
end