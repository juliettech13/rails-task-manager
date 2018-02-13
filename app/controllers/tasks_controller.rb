class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    find
  end

  def new
    @task = Task.new
  end

  def create
    @task = Restaurant.new(task_params)
    @tasks.save
  end

  def edit
    find
  end

  def update
    find
    @task.update(task_params)
  end

  private

  def find
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :description)
  end
end
