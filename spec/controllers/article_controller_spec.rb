require_relative '../rails_helper.rb'

describe 'ArticlesController' do
  describe '#create' do
    before(:each) do
      @article = Article.new
    end
    it 'should NOT save article without a title' do
      @article.save
      expect(@article.errors.messages[:title].count).to eq(2)
    end

    it 'should NOT save article if title length is less than 5 characters' do
      @article.title = '0123'
      @article.save
      expect(@article.errors.messages[:title].count).to eq(1)
    end

    it 'should save article if title length is more than 5 characters' do
      @article.title = '012345'
      @article.save
      expect(@article.errors.messages.count).to eq(0)
    end
  end
end
