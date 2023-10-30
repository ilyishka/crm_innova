class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :body
      t.string :end
      t.string :begin

      t.timestamps
    end
  end
end
