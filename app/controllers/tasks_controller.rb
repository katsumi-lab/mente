class TasksController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @tasks = Task.page(params[:page]).per(3)
    @q = Task.ransack(params[:q])
    @results = @q.result(distinct: true)
    @task = Task.where(user_id: current_user.id)
  end

  def search
    @q = Task.search(search_params)
    @results = @q.result(distinct: true)
  end

  def show
    @task = Task.find(params[:id])
    if @task == "all" then
      @tasks = Task.all
    else
      @tasks = Task.where(completed: 0)
    end
  end

  def new
    @task = Task.new
  end
  def create
    binding.pry
    @task = Task.new(task_params)
    @task.valid?
    @deadline = @task.deadline
    # タスクが登録されたらEmailが送信される条件分岐。
    if @task.save
      TaskMailer.creation_email(@task).deliver_later(wait_until: @deadline.noon)
      # TaskMailer.creation_email(@task).deliver_now
      # MagazineJob.set(wait_until: @deadline.noon).perform_later
      redirect_to @task, notice: "「#{@task.floor}の#{@task.room}の#{@task.item}」を登録しました。"
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
    redirect_to @task, notice:"「#{@task.floor}の#{@task.room}の#{@task.item}」を更新しました。"
  end

  def destroy
    task =Task.find(params[:id])
    task.destroy
  end

  private
  def search_params
    params.require(:q).permit!
  end

  def task_params
    params.require(:task).permit(:floor, :room, :item, :mentenance, :deadline).merge(user_id: current_user.id)
  end
  
  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
