# require 'rails_helper'
#
# RSpec.describe '【課題】タスクの新規作成', type: :system do
#   it 'タスクの新規作成ができること' do
#     login
#     visit new_task_path
#     fill_in 'タスク', with: '掃除をする'
#     click_on '作成'
#     expect(page).to have_content('タスクを作成しました')
#     expect(page).to have_content('掃除をする')
#   end
#
#   it 'タスクの新規作成に失敗すること' do
#     login
#     visit new_task_path
#     fill_in 'タスク', with: ''
#     click_on '作成'
#     expect(page).to have_content('タスクを作成できませんでした')
#   end
#
#   it 'タスクの更新ができること' do
#     user = create(:user)
#     task = create(:task, content: '基本情報技術者試験の勉強をする', user: user)
#     login_as(user)
#     visit tasks_path
#     within "#task-#{task.id}" do
#       click_on '編集'
#     end
#     expect(current_path).to eq(edit_task_path(task))
#     fill_in 'タスク', with: '応用情報技術者試験の勉強をする'
#     click_on '更新'
#     expect(page).to have_content('タスクを更新しました')
#     expect(page).to have_content('応用情報技術者試験の勉強をする')
#   end
#
#   it 'タスクが一覧表示されていること' do
#     user = create(:user)
#     other_user = create(:user)
#     task1 = create(:task, content: '基本情報技術者試験の勉強をする', user: user)
#     task2 = create(:task, content: 'Ruby on Railsの勉強をする', user: user)
#     create(:task, content: 'Reactの勉強をする', user: other_user)
#     login_as(user)
#     visit tasks_path
#     within "#task-#{task1.id}" do
#       expect(page).to have_content('基本情報技術者試験の勉強をする')
#     end
#     within "#task-#{task2.id}" do
#       expect(page).to have_content('Ruby on Railsの勉強をする')
#     end
#     expect(page).not_to have_content('Reactの勉強をする')
#   end
#
#   it 'タスクが削除できること' do
#     user = create(:user)
#     task = create(:task, content: '基本情報技術者試験の勉強をする', user: user)
#     login_as(user)
#     visit tasks_path
#     within "#task-#{task.id}" do
#       page.accept_confirm { click_on '削除' }
#     end
#     expect(page).to have_content('タスクを削除しました')
#   end
# end
