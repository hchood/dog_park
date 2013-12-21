class CreateDogOwnership < ActiveRecord::Migration
  def change
    create_table :dog_ownerships do |t|
      t.integer :owner_id, null: false
      t.integer :dog_id, null: false

      t.timestamps
    end
  end
end
