class PostsController < ApplicationController
  #validates :title,:body, presence: true

  def index
    @posts = Post.all.order("created_at DESC")

  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = "Post was successfully saved."
      redirect_to(posts_path)
    else
      render('new')
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)
      flash[:success] = "Post was updated successfully."
      redirect_to(post_path)
      
    else
      render('edit')
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to(posts_path)
  end
  private
    def post_params
      params.require(:post).permit(:title, :body)
    end

end
