class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/posts" do
    posts = Post.all.newest
    posts.to_json(include: :comments)
  end

  post '/posts' do
    blog_post = Post.create(
      author: params[:author],
      title: params[:title],
      body: params[:body]
    )
    blog_post.to_json(include: :comments)
  end

  post '/comments' do
    comment = Comment.create(
      name: params[:name],
      comment: params[:comment],
      post_id: params[:post_id]
    )
    comment.to_json
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
    blog_post.destroy
    blog_post.to_json
  end

  delete '/comments/:id' do
    comment = Comment.find(params[:id])
    comment.destroy
    comment.to_json
  end
end
