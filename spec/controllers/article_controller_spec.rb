require 'rails_helper.rb'
# require '~/blog/app/controllers/articles_controller.rb'

describe 'ArticlesController' do
	describe '#create' do
		# avant chaque test, il faut ...
    before(:each) do
    	# autentification
    end

		it 'should not save a article without a title' do
			# nouvelle article
			article = Article.new
			article.save
			expect article.errors.count > 0
			# subject {post :create, :article => {:title => ''}}
			# expect(subject).not_to redirect_to(@article)
		end

		it 'should NOT save article if title length less than 5 character' do
			article = Article.new
			article.title = '1234'
			article.save
			expect article.errors.count > 0
		end

		it 'should save article with title with more than 5 character' do
			subject {post :create, :article => {:title => '012345'}}
			expect(subject).to redirect_to(article)
		end
	end
end
