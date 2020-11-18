class TaskMailer < ApplicationMailer
  default from: 'example@gamil.com'

  def creation_email(task)
    @task = task
    @user = task.user
    mail(to: @user.email, subject: 'お手入れのお知らせ')
  end

end
