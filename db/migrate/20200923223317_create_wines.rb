class CreateWines < ActiveRecord::Migration[6.0]
  def change
    create_table :wines do |t|
      t.string :variety
      t.string :producer
      t.string :region
      t.integer :vintage
      t.string :notes

      t.timestamps
    end
  end
end
