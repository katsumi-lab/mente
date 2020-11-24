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
    visit new_tweet_path
    # フォームに情報を入力する
    fill_in 'task_floor_id', with: @task_floor_id
    fill_in 'task_room_id', with: @task_room_id
    fill_in 'task_item_id', with: @task_floor_id
    fill_in 'task_mentenance_id', with: @task_mentenance_id
    fill_in 'task_deadline', with: @task_deadline
    # 送信するとTweetモデルのカウントが1上がることを確認する
    expect{
      find('input[name="commit"]').click
    }.to change { Tweet.count }.by(1)
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
