class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task_name
      t.string :list_name
      t.boolean :checked

      t.timestamps
    end
  end
end
