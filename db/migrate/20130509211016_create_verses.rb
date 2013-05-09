class CreateVerses < ActiveRecord::Migration
  def change
    create_table :verses do |t|
      t.integer :user_id
      t.integer :battle_id

      t.timestamps
    end
  end
end
