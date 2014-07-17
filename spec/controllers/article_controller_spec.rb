require_relative '../rails_helper.rb'

describe 'ArticlesController' do
	describe '#create' do
		it 'should NOT save article without a title' do
			article = Article.new
			article.save
			puts article.errors.count
			expect article.errors.count < 0
		end

		it 'should NOT save article if title length is less than 5 characters' do
			article = Article.new
			article.title = '0123'
			article.save
			puts article.errors.count
			expect article.errors.count == 1
		end

		it 'should save article if title length is more than 5 characters' do
			article = Article.new
			article.title = '012345'
			article.save
			puts article.errors.count
			expect article.errors.count == 0
		end
	end
end
