# require 'rails_helper'
#
# RSpec.describe '【課題】タスクの完了/未完了', type: :system do
#   it '未完了タブには未完了のタスクしか表示されていないこと' do
#     user = create(:user)
#     create(:task, content: '基本情報技術者試験の勉強をする', user: user, done_at: Time.current)
#     create(:task, content: 'Ruby on Railsの勉強をする', user: user)
#     login_as(user)
#     visit tasks_path
#     click_on '未完了'
#     expect(page).to have_content('Ruby on Railsの勉強をする')
#     expect(page).not_to have_content('基本情報技術者試験の勉強をする')
#   end
#
#   it '完了タブには完了のタスクしか表示されていないこと' do
#     user = create(:user)
#     create(:task, content: '基本情報技術者試験の勉強をする', user: user, done_at: Time.current)
#     create(:task, content: 'Ruby on Railsの勉強をする', user: user)
#     login_as(user)
#     visit tasks_path
#     click_on '完了'
#     expect(page).to have_content('基本情報技術者試験の勉強をする')
#     expect(page).not_to have_content('Ruby on Railsの勉強をする')
#   end
#
#   it '全てタブには全てのタスクが表示されていること' do
#     user = create(:user)
#     create(:task, content: '基本情報技術者試験の勉強をする', user: user, done_at: Time.current)
#     create(:task, content: 'Ruby on Railsの勉強をする', user: user)
#     login_as(user)
#     visit tasks_path
#     click_on '全て'
#     expect(page).to have_content('基本情報技術者試験の勉強をする')
#     expect(page).to have_content('Ruby on Railsの勉強をする')
#   end
#
#   it 'タスクを完了できること' do
#     user = create(:user)
#     task = create(:task, content: '基本情報技術者試験の勉強をする', user: user)
#     create(:task, content: 'Ruby on Railsの勉強をする', user: user)
#     login_as(user)
#     visit tasks_path
#     within "#task-#{task.id}" do
#       click_on '完了状態にする'
#     end
#     expect(page).to have_content('Ruby on Railsの勉強をする')
#     expect(page).to have_content('タスクを完了状態にしました')
#   end
#
#   it 'タスクを未完了にできること' do
#     user = create(:user)
#     task = create(:task, content: '基本情報技術者試験の勉強をする', user: user, done_at: Time.current)
#     login_as(user)
#     visit tasks_path
#     click_on '完了'
#     within "#task-#{task.id}" do
#       click_on '未完了状態にする'
#     end
#     expect(page).to have_content('基本情報技術者試験の勉強をする')
#     expect(page).to have_content('タスクを未完了状態にしました')
#   end
# end
