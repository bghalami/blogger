require 'rails_helper'

describe 'user can delete an article' do
  context 'from the show page' do
    it 'should delete an article' do
      article1 = Article.create(title: 'wow', body: 'oh wow')

      visit('/articles')

      expect(page).to have_link("#{article1.title}")

      click_link("#{article1.title}")

      click_on('Delete')

      expect(current_path).to eq(articles_path)
      expect(page).to_not have_link("#{article1.title}")
    end
  end
end
