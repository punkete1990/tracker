class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.datetime :begin_time
      t.datetime :end_time
      t.references :projectstatus
      t.references :user
      t.boolean :public

      t.timestamps
    end
    add_index :projects, :projectstatus_id
    add_index :projects, :user_id
  end
end
