desc "This task is called by the Heroku scheduler add-on"
task :test_scheduler => :environment do
  puts "ジョブを実行しました"
  tasks = Task.all(task_params)

  tasks each do |tasks|
    TaskMailer.creation_email(@task).deliver_later(wait: 1.week)
    puts "メールを送信しました"
  end
end

private

def task_params
  params.require(:task).permit(:floor_id, :room_id, :item_id, :mentenance_id, :deadline).merge(user_id: current_user.id)
end