class TasksController < ApplicationController

  def index
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to @task
    else
      render :index
    end
  end

  private

  def task_params
    params.require(:task).permit(:content, :image)
  end
end
