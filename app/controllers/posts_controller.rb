class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:users,:create, :new]

  def index
    @posts = Post.paginate(page: params[:page], per_page: 3) 
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save!
      redirect_to posts_path, notice: 'Post was successfully created.'
    else
      render :new
    end
  end
  def edit
      @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if params[:post][:image_ids]
       params[:post][:image_ids].each do |image_id|
          image = post.image.find(image_id)
          image.purge
     end
   end
    if @post.update(post_params)
      redirect_to @post, notice: 'Post was successfully updated.'
    else
      render :edit
    end
  end
   def users
    @users = User.includes(:posts).all
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
  end
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path, notice: 'Post was successfully deleted.'
  end
  private
  
  def post_params
    params.require(:post).permit(:title, :content,:image)
  end

end
