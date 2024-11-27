class AddReferencesToTodos < ActiveRecord::Migration[7.0]
  def change
    add_reference :todos, :user
  end
end
