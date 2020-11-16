module TasksHelper

  def deadline_count(task)
    today = Date.today
    deadline = task.deadline
    countdown = (deadline-today).to_i
    if countdown == 0
      "今日がお手入れの目安の日です！"
    elsif countdown.between?(1, 3)
      "お手入れの目安まで残り#{countdown}日"
    elsif countdown < 0
      "目安の日を過ぎています"
    else
      "お手入れの目安日:#{l task.deadline}"
    end
  end

end
