class TodosController < ApplicationController

  def index 
    todos = Todo.all
    if todos 
      render json: {todos: todos}, include: :property
    else 
      render json: {status: 500, errors: ['no todos found']}
    end
  end

  def show
    todo = Todo.find(params[:id])
    if todo 
      render json: {todo: todo, property: todo.property}
    else 
      render json: {status: 500, errors: ['no todo found with this id']}
    end
  end


  def edit
    todo = Todo.find(params[:id])
  end


  def update
    todo = Todo.find(params[:id])
    todo.update(isCompleted: params[:isCompleted])
    render json: {todo: todo}
  end





  def create 
    todo = Todo.new(todo_params)
    if todo.save
      render json: {status:200, todo: todo}
    else
      render json: {status: 500, errors: todo.errors.full_messages}
    end
  end

  private

def todo_params
  params.require(:todo).permit(:property_id, :message, :isCompleted)
end

  
end
