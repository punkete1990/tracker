class CreateProjectstatuses < ActiveRecord::Migration
  def change
    create_table :projectstatuses do |t|
      t.string :description

      t.timestamps
    end
  end
end
