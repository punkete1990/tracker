class CreateTasktypes < ActiveRecord::Migration
  def change
    create_table :tasktypes do |t|
      t.string :description

      t.timestamps
    end
  end
end
