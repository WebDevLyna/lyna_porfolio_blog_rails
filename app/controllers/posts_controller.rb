class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new post_params

    if @post.save
      redirect_to @post, notice: "Nice work Lyna! Your article was succesfully saved!"
    else
      render 'new', notice: "Oh no, Lyna! I was unable to save your post!"
    end
  end

  def show
  end

  def edit
    # This is already defined in the before_action above
  end

  def update
    if @post.update post_params
      redirect_to @post, notice: "Your article was successfully saved!"
    else
      render 'edit'
    end
  end

  def destroy
    # before action performed then the following steps
    @post.destroy
    redirect_to posts_path
  end


  private

  def post_params
    params.require(:post).permit(:title, :content, :slug)
  end

  # Change Post.find to Post.friendly.find in your controller
  def find_post
    @post = Post.find(params[:id])
  end

end