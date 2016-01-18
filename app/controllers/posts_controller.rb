class PostsController < ApplicationController
  load_and_authorize_resource

  def index
    @posts = Post.approved.paginate(page: params[:page], :per_page => 6)
  end

  def show
    @post = Post.approved.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.approved.find(params[:id])
  end

  def create
    @post = current_user.posts.build(post_params)

    if @post.save
      flash[:notice] = "Your post waiting for admin approval"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def update
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private
    def post_params
      params.require(:post).permit(:title, :body)
    end
end
