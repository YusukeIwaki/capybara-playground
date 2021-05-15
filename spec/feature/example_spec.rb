require 'spec_helper'

RSpec.describe 'example' do
  it 'works' do
    visit '/'
    expect(page).to have_content('It works!')
  end

  it 'fails on dialog shown', pending: true do
    visit '/alert'
    find('button').click # ここでおちる
    expect(page).to have_content('clicked')
  end

  it 'passes with accept_alert' do
    visit '/alert'
    accept_alert do
      find('button').click
    end
    expect(page).to have_content('clicked')
  end

  it 'fails if alert is not shown' do
    visit '/alert'
    expect {
      accept_alert do
        # do nothing
      end
    }.to raise_error(Capybara::ModalNotFound)
  end

  it 'fails if alert is not shown' do
    visit '/alert'
    expect {
      dismiss_confirm do
        # do nothing
      end
    }.to raise_error(Capybara::ModalNotFound)
  end

  it 'fails on 2 dialog shown', pending: true do
    visit '/confirm_twice'
    accept_confirm do
      find('button').click
    end
    expect(page).to have_content('clicked')
  end

  it 'passes with nested handler on 2 dialog shown' do
    visit '/confirm_twice'
    accept_confirm do
      accept_confirm do
        find('button').click
      end
    end
    expect(page).to have_content('clicked')
  end

  it 'always returns page title/url' do
    visit '/iframe'
    expect(title).to include('iframe')
    expect(current_url).to include('/iframe')

    iframe = find('iframe')
    switch_to_frame(iframe)

    expect(title).to include('iframe')
    expect(current_url).to include('/iframe')

    switch_to_frame(:top)
  end
end
