require 'rails_helper'

describe 'user sees on article' do
  describe 'they link from the articles index' do
    it 'displays information for one article' do
      article1 = Article.create!(title: 'Title 1', body: 'Body 1')

      visit '/articles'

      click_link "#{article1.title}"

      expect(page).to have_content("#{article1.title}")
      expect(page).to have_content("#{article1.body}")
    end
  end
end
