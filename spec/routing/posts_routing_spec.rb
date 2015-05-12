require 'rails_helper'
require 'spec_helper'
include Rails.application.routes.url_helpers

describe PostsController do


  describe 'routing' do
    it '#index' do
      expect(get('/posts')).to route_to('posts#index')
    end

    it 'routes to #new' do
      expect(get('/posts/new')).to route_to('posts#new')
    end

  end
end