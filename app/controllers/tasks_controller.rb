class TasksController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @tasks = Task.page(params[:page]).per(3)
  end

  def show
    @task = Task.find(params[:id])
    if @task == "all" then
      @task = Task.all
    else
      @task = Task.where(completed: 0)
    end

  end

  def new
    @task = Task.new
  end
  def create
    @task = Task.new(task_params)
    # タスクが登録されたらEmailが送信される条件分岐。
    if @task.save
      TaskMailer.creation_email(@task).deliver_now
      redirect_to @task, notice: "「#{@task.name}」を登録しました。"
    else
      render :new
    end
  end

  def edit
    @task = Task.find(params[:id])
  end
  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to @task, notice:"「#{@task.name}」を更新しました。"
  end

  def destroy
    task =Task.find(params[:id])
    task.destroy
    redirect_to tasks_path, notice: "「#{task.name}」を削除しました。"
  end
  private

  def task_params
    params.require(:task).permit(:name, :room, :item,:description, :completed).merge(user_id: current_user.id)
  end
  
  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
