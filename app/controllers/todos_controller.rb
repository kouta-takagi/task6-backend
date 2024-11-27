class TodosController < ApplicationController
  before_action :authenticate_user!

  def index
    @finished_todos = current_user.todos.where(is_finished: true)
    @unfinished_todos = current_user.todos.where(is_finished: false)
    @user = current_user
    render json: {finished_todos:@finished_todos, unfinished_todos:@unfinished_todos, user: @user}
  end

  def create
    @todo = current_user.todos.new(todo_params)
    if @todo.save
      render status: :created
    else
      render status: :unprocessable_entity
    end
  end

  def update
    @todo = Todo.find(params[:id])
    if @todo.update(todo_params)
      render status: :ok
    else
      render status: :unprocessable_entity
    end
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    render status: :ok
  end

  private

  def todo_params
    params.require(:todo).permit(:title, :description, :is_finished)
  end
end
