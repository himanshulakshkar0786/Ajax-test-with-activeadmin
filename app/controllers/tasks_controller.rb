class TasksController < ApplicationController

  def index
    @incomplete_tasks = Task.where(complete: false)
    @complete_tasks = Task.where(complete: true)
  end

  def new
    @task = Task.new
  end
  
  def create
    @task = Task.create!(task_params)
    
    respond_to do |f|
      f.html { redirect_to tasks_url }
      f.js
    end
  end
  
  def update
    @task = Task.find(params[:id])
    @task.update_attributes!(task_params)
    
    respond_to do |f|
      f.html { redirect_to tasks_url }
      f.js
    end
  end
  
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    
    respond_to do |f|
      f.html { redirect_to tasks_url }
      f.js
    end
  end
  
  private
  
  def task_params
    params.require(:task).permit(:name, :complete)
  end

end