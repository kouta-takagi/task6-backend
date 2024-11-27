class CreateTodos < ActiveRecord::Migration[7.0]
  def change
    create_table :todos do |t|
      t.string :title
      t.string :description
      t.boolean :is_finished

      t.timestamps
    end
  end
end
