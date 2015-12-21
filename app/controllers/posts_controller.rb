class PostsController < ApplicationController
  load_and_authorize_resource

  def index
  	@posts = Post.paginate(page: params[:page], :per_page => 6)
  end

  def show
  	@post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
 
    if @post.save
      redirect_to @post
    else
      render 'new'
    end   
  end   

  def update
    @post = Post.find(params[:id])    
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end 

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
   
    redirect_to posts_path
  end

  private
	  def post_params
	    params.require(:post).permit(:title, :body)
	  end
end
