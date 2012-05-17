class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :name
      t.text :bio
      t.references :country

      t.timestamps
    end
    add_index :profiles, :country_id
  end
end
