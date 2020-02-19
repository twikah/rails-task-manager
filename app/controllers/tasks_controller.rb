class TasksController < ApplicationController
  # before_action :fetch_tasks, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    Task.create(task_params)

    redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  # def fetch_tasks
  #   @task = Task.find(params[:id])
  # end
end
