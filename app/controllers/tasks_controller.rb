class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy, :switch_done_status]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @task.update(task_params)
    redirect_to tasks_path
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  def switch_done_status
    if @task.done
      @task.done = false
    else
      @task.done = true
    end
    redirect_to update_path(@task), method: :patch
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name, :description, :category, :priority, :comments, :deadline, :done)
  end
end

