require 'spec_helper'

RSpec.describe 'github search' do
  around do |example|
    prev_host = Capybara.app_host
    Capybara.app_host = 'https://github.com'
    begin
      example.run
    ensure
      Capybara.app_host = prev_host
    end
  end

  it 'should search repository' do
    visit '/'

    fill_in('q', with: 'selenium')
    find('a[data-item-type="global_search"]').click

    output = all('.repo-list-item').map do |li|
      li.all('a').first.text
    end
    puts output
    expect(output).to include(match(/selenium/i))
  end

  it 'should search repository' do
    visit '/'

    fill_in('q', with: 'selenium')
    find('a[data-item-type="global_search"]').click

    output = all('.repo-list-item').map do |li|
      li.all('a').first.text
    end
    puts output
    expect(output).to include(match(/selenium/i))
  end

  it 'should search repository' do
    visit '/'

    fill_in('q', with: 'selenium')
    find('a[data-item-type="global_search"]').click

    output = all('.repo-list-item').map do |li|
      li.all('a').first.text
    end
    puts output
    expect(output).to include(match(/selenium/i))
  end

  it 'should search repository' do
    visit '/'

    fill_in('q', with: 'selenium')
    find('a[data-item-type="global_search"]').click

    output = all('.repo-list-item').map do |li|
      li.all('a').first.text
    end
    puts output
    expect(output).to include(match(/selenium/i))
  end

  it 'should search repository' do
    visit '/'

    fill_in('q', with: 'selenium')
    find('a[data-item-type="global_search"]').click

    output = all('.repo-list-item').map do |li|
      li.all('a').first.text
    end
    puts output
    expect(output).to include(match(/selenium/i))
  end

  it 'should search repository' do
    visit '/'

    fill_in('q', with: 'selenium')
    find('a[data-item-type="global_search"]').click

    output = all('.repo-list-item').map do |li|
      li.all('a').first.text
    end
    puts output
    expect(output).to include(match(/selenium/i))
  end

  it 'should search repository' do
    visit '/'

    fill_in('q', with: 'selenium')
    find('a[data-item-type="global_search"]').click

    output = all('.repo-list-item').map do |li|
      li.all('a').first.text
    end
    puts output
    expect(output).to include(match(/selenium/i))
  end

  it 'should search repository' do
    visit '/'

    fill_in('q', with: 'selenium')
    find('a[data-item-type="global_search"]').click

    output = all('.repo-list-item').map do |li|
      li.all('a').first.text
    end
    puts output
    expect(output).to include(match(/selenium/i))
  end

  it 'should search repository' do
    visit '/'

    fill_in('q', with: 'selenium')
    find('a[data-item-type="global_search"]').click

    output = all('.repo-list-item').map do |li|
      li.all('a').first.text
    end
    puts output
    expect(output).to include(match(/selenium/i))
  end

  it 'should search repository' do
    visit '/'

    fill_in('q', with: 'selenium')
    find('a[data-item-type="global_search"]').click

    output = all('.repo-list-item').map do |li|
      li.all('a').first.text
    end
    puts output
    expect(output).to include(match(/selenium/i))
  end

end
