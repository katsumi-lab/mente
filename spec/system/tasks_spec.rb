require 'rails_helper'

RSpec.describe 'タスク登録', type: :system do
  before do
    @user = FactoryBot.create(:user)
  end
  context 'タスク登録ができるとき'do
  it 'ログインしたユーザーは新規投稿できる' do
    # ログインする
    visit new_user_session_path
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    find('input[name="commit"]').click
    expect(current_path).to eq root_path
    # 新規投稿ページへのリンクがあることを確認する
    expect(page).to have_content('登録する')
    # 投稿ページに移動する
    visit new_task_path
    # フォームに情報を入力する
    fill_in 'task_floor_id', with: @task_floor_id
    fill_in 'task_room_id', with: @task_room_id
    fill_in 'task_item_id', with: @task_floor_id
    fill_in 'task_mentenance_id', with: @task_mentenance_id
    fill_in 'task_deadline', with: @task_deadline
    # 送信するとtaskモデルのカウントが1上がることを確認する
    expect{
      find('input[name="commit"]').click
    }.to change { task.count }.by(1)
    # 投稿完了ページに遷移することを確認する
    expect(current_path).to eq tasks_path
    # 「タスクを登録しました」の文字があることを確認する
    expect(page).to have_content('投稿が完了しました。')
    # トップページに遷移する
    visit root_path
  end
end
  context 'タスク登録ができないとき'do
    it 'ログインしていないと新規投稿ページに遷移できない' do
      # トップページに遷移する
      visit root_path
      # 新規投稿ページへのリンクがない
      expect(page).to have_no_content('登録する')
    end
  end
end

RSpec.describe 'タスク編集', type: :system do

  context 'タスク編集ができるとき' do
    it 'ログインしたユーザーは自分が投稿したタスクの編集ができる' do
      # タスク1を投稿したユーザーでログインする
      visit new_user_session_path
      fill_in 'Email', with: @task1.user.email
      fill_in 'Password', with: @task1.user.password
      find('input[name="commit"]').click
      expect(current_path).to eq root_path
      # タスク1に「編集」ボタンがあることを確認する
      expect(
        all(".more")[1].hover
      ).to have_link '編集', href: edit_task_path(@task1)
      # 編集ページへ遷移する
      visit edit_task_path(@task1)
      # すでに投稿済みの内容がフォームに入っていることを確認する
      expect(
        find('#task_floor_id').value
      ).to eq @task1.floor_id
      expect(
        find('#task_room_id').value
      ).to eq @task1.room_id
      expect(
        find('#task_item_id').value
      ).to eq @task1.item_id
      expect(
        find('#task_mentenance_id').value
      ).to eq @task1.mentenance_id
      expect(
        find('#task_deadline').value
      ).to eq @task1.deadline
      # 投稿内容を編集する
      fill_in 'task_floor_id', with: "#{@task1.floor_id}+編集した場所"
      fill_in 'task_room_id', with: "#{@task1.room_id}+編集した部屋"
      fill_in 'task_item_id', with: "#{@task1.item_id}+編集した項目"
      fill_in 'task_mentenance_id', with: "#{@task1.mentenance_id}+編集したお手入れ"
      fill_in 'task_deadline', with: "#{@task1.deadline}+編集した目安日"
      # 編集してもtaskモデルのカウントは変わらないことを確認する
      expect{
        find('input[name="commit"]').click
      }.to change { task.count }.by(0)
      # 編集完了画面に遷移したことを確認する
      expect(current_path).to eq task_path(@task1)
      # 「更新が完了しました」の文字があることを確認する
      expect(page).to have_content('更新が完了しました。')

    end
  end
  context 'タスク編集ができないとき' do
    it 'ログインしたユーザーは自分以外が投稿したタスクの編集画面には遷移できない' do
      # タスク1を投稿したユーザーでログインする
      visit new_user_session_path
      fill_in 'Email', with: @task1.user.email
      fill_in 'Password', with: @task1.user.password
      find('input[name="commit"]').click
      expect(current_path).to eq root_path
      # タスク2に「編集」ボタンがないことを確認する
      expect(
        all(".more")[0].hover
      ).to have_no_link '編集', href: edit_task_path(@task2)
    end
    it 'ログインしていないとタスクの編集画面には遷移できない' do
      # トップページにいる
      visit root_path
      # タスク1に「編集」ボタンがないことを確認する
      expect(
        all(".more")[1].hover
      ).to have_no_link '編集', href: edit_task_path(@task1)
      # タスク2に「編集」ボタンがないことを確認する
      expect(
        all(".more")[0].hover
      ).to have_no_link '編集', href: edit_task_path(@task2)
    end
  end
    
end