require 'rails_helper'

RSpec.describe Task, type: :model do
  before do
    @task = FactoryBot.build(:task)
  end

  describe 'タスクが登録ができる'
  it '場所が空だと登録できない' do
    @task.floor = nil
    @task.valid?
    expect(@task.errors.full_messages).to include("ユーザを入力してください", "場所を入力してください", "お手入れの目安を入力してください")
  end

  it '部屋が空だと登録できない' do
    @task.room = ''
    @task.valid?
    expect(@task.errors.full_messages).to include("ユーザを入力してください", "部屋を入力してください", "お手入れの目安を入力してください")
  end

  it '項目が空と登録できない' do
    @task.item =  ''
    @task.valid?
    expect(@task.errors.full_messages).to include("ユーザを入力してください", "項目を入力してください", "お手入れの目安を入力してください")
  end

  it 'お手入れが空だと登録できない' do
    @task.mentenance = ''
    @task.valid?
    expect(@task.errors.full_messages).to include("ユーザを入力してください", "お手入れを入力してください", "お手入れの目安を入力してください")
  end

  it 'お手入れの目安が空だと登録できない' do
    @task.deadline = ''
    @task.valid?
    expect(@task.errors.full_messages).to include("ユーザを入力してください", "お手入れの目安を入力してください")
  end

  it '必要な情報を全て入力すれば登録できる' do
    expect(Task id= nil, floor= "0", room= "0", item= "0", description= nil, created_at= nil, updated_at= nil, user_id= nil, deadline= nil, completed= nil, mentenance= "0").to be valid, but got errors: ユーザを入力してください, お手入れの目安を入力してください
  end
end
