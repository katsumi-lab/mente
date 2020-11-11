require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end
    describe 'ユーザー新規登録' do
      it 'emailが空では登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Eメールを入力してください")
      end
      it '重複したemailが存在する場合登録できない' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include('Eメールはすでに存在します')
      end
  
      it 'passwordが空だと登録できない' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードを入力してください")
      end
      it 'passwordが5文字以下であれば登録できない' do
        @user.password = '00000'
        @user.password_confirmation = '00000'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは6文字以上で入力してください')
      end
      it 'passwordが半角英数字混合でなければ登録できない' do
        @user.password = '[ -~]'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません", "パスワード（確認用）とパスワードの入力が一致しません", "パスワードは6文字以上で入力してください", "パスワードは6文字以上で入力してください", "パスワードは不正な値です")
      end
      it 'passwordが存在してもpassword_confirmationが空では登録できない' do
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
      end
  
      it 'last_nameが空だと登録できない' do
        @user.last_name = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Last nameを入力してください")
      end
      it 'first_nameが空では登録できない' do
        @user.first_name = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("First nameを入力してください")
      end
      it 'last_nameが全角でなければ登録できない' do
        @user.last_name = "/\A[ぁ-んァ-ン一-龥]+\z/"
        @user.valid?
        expect(@user.errors.full_messages).to include('Last nameは不正な値です')
      end
      it 'first_nameが全角でなければ登録できない' do
        @user.first_name = "/\A[ぁ-んァ-ン一-龥]+\z/"
        @user.valid?
        expect(@user.errors.full_messages).to include('First nameは不正な値です')
      end
  
      it 'Last_name_kanaが空だと登録できない' do
        @user.last_name_kana = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Last name kanaを入力してください", "Last name kanaは不正な値です")
      end
      it 'first_name_kanaが空では登録できない' do
        @user.first_name_kana = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("First name kanaを入力してください", "First name kanaは不正な値です")
      end
      it 'Last_name_kanaが全角カナでなければ登録できない' do
        @user.last_name_kana = "/\A[ァ-ン]+\z/"
        @user.valid?
        expect(@user.errors.full_messages).to include('Last name kanaは不正な値です')
      end
      it 'first_name_kanaが全角カナでなければ登録できない' do
        @user.first_name_kana = "/\A[ァ-ン]+\z/"
        @user.valid?
        expect(@user.errors.full_messages).to include('First name kanaは不正な値です')
      end
      
      it '必要な情報を全て入力すれば登録できる' do
        @user.email = 'kkk@gmail.com'
        @user.password = '000000'
        @user.password_confirmation = '000000'
        @user.last_name = '山田'
        @user.first_name = '太郎'
        @user.last_name_kana = 'ヤマダ'
        @user.first_name_kana = 'タロウ'
        expect(@user).to be_valid
        User id: nil, email: "kkk@gmail.com", created_at: nil, updated_at: nil, last_name: "山田", first_name: "太郎", last_name_kana: "ヤマダ", first_name_kana: "タロウ" to be valid
      end

    end
  
end
