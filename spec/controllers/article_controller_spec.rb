require '~/blog/spec/rails_helper.rb'
require '~/blog/app/controllers/articles_controller.rb'

describe ArticlesController do
	describe '#create' do
		it 'should NOT save article with title with less than 5 character' do
			subject {post :create, :article => {:title => ''}}
			expect(subject).not_to redirect_to(@article)
		end
		it 'should save article with title with more than 5 character' do
			subject {post :create, :article => {:title => '012345'}}
			expect(subject).to redirect_to(@article)
		end
	end
end
