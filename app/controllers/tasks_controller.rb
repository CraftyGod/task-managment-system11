class TasksController < ApplicationController
  def index
    if user_signed_in?
      @tasks = current_user.tasks.where(completed: false).order('priority DESC')
      @completed_tasks = current_user.tasks.where(completed: true).order('updated_at')
    end
  end

  def new
    @task = current_user.tasks.new
  end

  def create
    @task = current_user.tasks.new task_params

    @task.save

    redirect_to tasks_path
  end

  def edit
    @task = current_user.tasks.find(params[:id])
  end

  def update
    @task = current_user.tasks.find(params[:id])

    @task.update(task_params)

    redirect_to tasks_path
  end

  def complete
    @task = current_user.tasks.find(params[:id])

    @task.complete!

    redirect_to tasks_path
  end

  def destroy
    @task = current_user.tasks.find(params[:id])

    @task.destroy

    redirect_to tasks_path
  end


  private

  def task_params
    params.require(:task).permit(
         :title, :priority, :description, :due_date, :completed, :user_id)
  end
end
