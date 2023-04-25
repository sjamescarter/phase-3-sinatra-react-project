class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/posts" do
    posts = Post.all
    posts.to_json
  end

  get '/posts/:id' do
    post = Posts.find(params[:id])
    post.to_json(include: :comments)
  end

  post '/posts' do
    blog_post = Post.create(
      author: params[:author],
      title: params[:title],
      body: params[:body]
    )
    blog_post.to_json
  end

  patch '/posts/:id' do
    blog_post = Post.find(params[:id])
    blog_post.update(
      author: params[:author],
      title: params[:title],
      body: params[:body]
    )
    blog_post.to_json
  end

  delete '/posts/:id' do
    blog_post = Post.find(params[:id])
    blog_post.destoy
    blog_post.to_json
  end
end
