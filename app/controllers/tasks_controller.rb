class TasksController < ApplicationController
  def index
    @q = current_user.tasks.undone.order(created_at: :desc).ransack(params[:q])
    @tasks = @q.result(distinct: true)
  end

  def new
    @task = current_user.tasks.build
  end

  def create
    @task = current_user.tasks.build(task_params)
    if @task.save
      redirect_to tasks_path, success: 'タスクを作成しました'
    else
      flash.now[:danger] = 'タスクを作成できませんでした'
      render :new
    end
  end

  def edit
    @task = current_user.tasks.find(params[:id])
  end

  def update
    @task = current_user.tasks.find(params[:id])
    if @task.update(task_params)
      redirect_to tasks_path, success: 'タスクを更新しました'
    else
      flash.now[:danger] = 'タスクを更新できませんでした'
      render :edit
    end
  end

  def destroy
    @task = current_user.tasks.find(params[:id])
    redirect_to tasks_path, success: 'タスクを削除しました'
  end

  def done
    @q = current_user.tasks.done.order(created_at: :desc).ransack(params[:q])
    @tasks = @q.result(distinct: true)
    render :index
  end

  def all
    @q = current_user.tasks.order(created_at: :desc).ransack(params[:q])
    @tasks = @q.result(distinct: true)
    render :index
  end

  private

  def task_params
    params.require(:task).permit(:content)
  end
end
