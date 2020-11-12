class TasksController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @tasks = Task.page(params[:page]).per(3)
    @q = Task.ransack(params[:q])
    @results = @q.result(distinct: true)
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
    @task = Task.new(task_params)

    # タスクが登録されたらEmailが送信される条件分岐。
    if @task.save

      TaskMailer.creation_email(@task).deliver_now
      MagazineJob.set(wait_until: @task.deadline.to_s).perform_later
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
    redirect_to tasks_path, notice: "削除しました。"
  end

  # ゲスト用ログイン
  def new_guest
    user = User.find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
    end
    sign_in user
    redirect_to root_path, notice: 'ゲストユーザーとしてログインしました。'
  end

  private
  def search_params
    params.require(:q).permit!
  end

  def task_params
    params.require(:task).permit(:floor, :room, :item, :mentenance,:description, :completed, :deadline).merge(user_id: current_user.id)
  end
  
  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
