desc "This task is called by the Heroku scheduler add-on"
task :test_scheduler => :environment do
    puts "ジョブを実行しました"
end

task :create_job => :environment do
  TaskMailer.creation_email(@task).deliver_later(wait_until: @deadline)
  puts "メールを送信しました"
end