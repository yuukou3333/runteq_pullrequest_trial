require 'rails_helper'

RSpec.describe '【課題】タスクの絞り込み機能', type: :system do
  before do
    user = create(:user)
    create(:task, content: '基本情報技術者試験の勉強をする', user: user, done_at: Time.current)
    create(:task, content: '応用情報技術者試験の勉強をする', user: user, done_at: Time.current)
    create(:task, content: 'Ruby on Railsの勉強をする', user: user)
    create(:task, content: 'インフラの勉強をする', user: user)
    login_as(user)
  end
  it '未完了タブでの絞り込みが正しく機能していること' do
    visit '/tasks'
    fill_in 'q[content_cont]', with: 'Ruby'
    click_on '検索'
    expect(page).to have_content('Ruby on Railsの勉強をする')
    expect(page).not_to have_content('基本情報技術者試験の勉強をする')
    expect(page).not_to have_content('応用情報技術者試験の勉強をする')
    expect(page).not_to have_content('インフラの勉強をする')
  end

  it '完了タブでの絞り込みが正しく機能していること' do
    visit '/tasks/done'
    fill_in 'q[content_cont]', with: '基本'
    click_on '検索'
    expect(page).to have_content('基本情報技術者試験の勉強をする')
    expect(page).not_to have_content('応用情報技術者試験の勉強をする')
    expect(page).not_to have_content('Ruby on Railsの勉強をする')
    expect(page).not_to have_content('インフラの勉強をする')
  end

  it '全てタブでの絞り込みが正しく機能していること' do
    visit '/tasks/all'
    fill_in 'q[content_cont]', with: '情報'
    click_on '検索'
    expect(page).to have_content('基本情報技術者試験の勉強をする')
    expect(page).to have_content('応用情報技術者試験の勉強をする')
    expect(page).not_to have_content('Ruby on Railsの勉強をする')
    expect(page).not_to have_content('インフラの勉強をする')
  end
end
