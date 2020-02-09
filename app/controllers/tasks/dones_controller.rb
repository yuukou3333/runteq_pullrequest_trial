class Tasks::DonesController < ApplicationController
  def create
    @task = current_user.tasks.find(params[:task_id])
    @task.done!
    redirect_to tasks_path, success: 'タスクを完了状態にしました'
  end

  def destroy
    @task = current_user.tasks.find(params[:task_id])
    @task.undone!
    redirect_to tasks_path, success: 'タスクを未完了状態にしました'
  end
end
