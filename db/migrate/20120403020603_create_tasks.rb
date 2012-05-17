class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :project
      t.references :user
      t.string :title
      t.string :description
      t.datetime :begin_time
      t.datetime :end_time
      t.integer :difficulty
      t.references :tasktype
      t.boolean :finished

      t.timestamps
    end
    add_index :tasks, :project_id
    add_index :tasks, :user_id
    add_index :tasks, :tasktype_id
  end
end
