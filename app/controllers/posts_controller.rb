class PostsController < ApplicationController
  load_and_authorize_resource

  def index
    @posts = Post.approved.paginate(page: params[:page], :per_page => 6)
  end

  def show
    @post = Post.find(params[:id]) or not_found
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.approved.find(params[:id]) or not_found
  end

  def create
    @post = current_user.posts.build(post_params)

    if @post.save
      PostMailer.post_pending_email(current_user, @post).deliver_later
      flash[:notice] = "Your article is awaiting moderation"
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
