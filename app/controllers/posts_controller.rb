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
      flash.now[:error] = "Title/Body cannot be blank."
      render('new')
    end
  end



  private
    def post_params
      params.require(:post).permit(:title, :body)
    end

end