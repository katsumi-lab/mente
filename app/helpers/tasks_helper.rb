module TasksHelper

  def deadline_count(task)
    today = Date.today
    deadline = task.deadline
    countdown = (deadline-today).to_i
    if countdown == 0
      "今日がお手入れの目安の日です！"
    elsif countdown.between?(1, 3)
      "お手入れの目安まで残り#{countdown}日"
    else
      "お手入れの目安日:#{l task.deadline}"
    end
  end

  def deadline_style(task)
    today = Date.today
    deadline = task.deadline
    countdown = (deadline - today).numerator
    if countdown == 0
      "dl-style1"
    elsif countdown.between?(1, 3)
      "dl-style2"
    else
      "dl-style3"
    end
  end
end
