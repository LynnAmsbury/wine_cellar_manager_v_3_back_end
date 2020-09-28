class CreateUpdateCollections < ActiveRecord::Migration[6.0]
  def change
    create_table :update_collections do |t|
      t.references :wine, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
