class PostsController < ApplicationController
   before_filter :authenticate_user!
   before_filter :find_post, :only => [:update, :edit, :show, :destroy]

  def new
    @post = Post.new
  end


  def index
    @posts = current_user.posts
  end



  def create
    @post =current_user.posts.build(post_params)

    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def destroy

    @post.destroy

    redirect_to posts_path
  end


  def edit

  end

  def show

  end

  def update
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end


  private
  def post_params
    params.require(:post).permit(:title, :text)
  end

  def find_post
    @post = current_user.posts.find(params[:id])
  end

end
