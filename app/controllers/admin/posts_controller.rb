class Admin::PostsController < ApplicationController
  
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = "Post successfully created"
      redirect_to posts_path
    else
      flash[:error] = "Something went wrong"
      render :new
    end
  end

  def edit

  end

  private

  def post_params
    params.require(:post).permit(:title, :content,
                                          tag_ids: [])
  end
end
