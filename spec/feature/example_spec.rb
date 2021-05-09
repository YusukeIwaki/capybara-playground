require 'spec_helper'

RSpec.describe 'example' do
  it 'works' do
    visit '/'
    expect(page).to have_content('It works!')
  end
end
