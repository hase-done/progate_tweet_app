require 'rails_helper'

RSpec.describe 'make password digest column', type: :request do
  let(:user) { User.create(name: 'わんこ', email: 'wanko@prog-8.com', password: 'ninjawanko') }
  let(:user_params) { { name: 'ひつじ仙人', email: 'hitsuji@prog-8.com', password: 'hitsujisennin' } }

  it '@@@usersテーブルにpassword_digestカラムが設定されていません。カラム名を間違えた場合は「リセット」ボタンを押して新たに作り直しましょう。@@@' do
    expect(user.password_digest).not_to be_nil
  end

  it '@@@usersテーブルのpassword_digestカラムがstring型になっていません。「リセット」ボタンを押して新たに作り直しましょう。@@@' do
    User.create(user_params)
    expect(User.last.password_digest.is_a?(String)).to eq(true)
  end
end
