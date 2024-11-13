class TodosController < ApplicationController
  def index
    @finished_todos = User.find(1).todos.where(is_finished: true)
    @unfinished_todos = User.find(1).todos.where(is_finished: false)
    @user = User.find(1)
    render json: {finished_todos:@finished_todos, unfinished_todos:@unfinished_todos, user: @user}
  end
end
