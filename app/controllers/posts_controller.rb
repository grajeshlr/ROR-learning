class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.create(post_params)

    redirect_to posts_path
  end

  def edit
    @post = Post.find(params[:id])

  end
  

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)

    redirect_to post_path(@post)
  end

  def destroy
    #raise params.inspect
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end

  def user
    @user = User.find(params[:user_id])

    @posts = Post.where(user: @user)
  end

  private

  def post_params
    params.require(:post).permit(:content, :tittle)
  end
  
  
end
