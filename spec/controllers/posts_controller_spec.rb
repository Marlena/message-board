require 'rails_helper'

describe PostsController do

  describe '#index' do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end

  describe '#new' do
    it "responds successfully with an HTTP 200 status code" do
      get :new
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "sets @post" do
      get :new
      expect(assigns[:post]).to be_a_kind_of(Post)
    end
  end

  describe '#create' do
    let(:title) { 'title' }
    let(:content) { 'content' }

    it 'creates a post' do
      expect do
        post :create, post: {title: title, content: content}
      end.to change(Post, :count).by(1)
      last_post = Post.last
      expect(last_post.title).to eq(title)
      expect(last_post.content).to eq(content)
    end

    xit "responds successfully with an HTTP 200 status code" do
      post :create, post: {title: title, content: content}
      expect(response).to redirect_to(post_path(Post.last))
      expect(response).to have_http_status(200)
    end
  end
end
