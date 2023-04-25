class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/posts" do
    posts = Post.all
    posts.to_json
  end

  get 'posts/:id' do
    post = Posts.find(params[:id])
    post.to_json(include: :comments)
  end
end
