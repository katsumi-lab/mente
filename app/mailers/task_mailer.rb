class TaskMailer < ApplicationMailer
  default from: 'from@example.com'

  def creation_email(task)
    @task = task
    @user = task.user
    # @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'タスク作成完了メール')
  end

end
