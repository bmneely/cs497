class PostsController < ApplicationController
  def show
    @post = Post.friendly.find(params[:id])
    @store = @post.blog.store
  end

  def new
    blog = Blog.friendly.find(params[:blog_id])
    @store = blog.store
    @post = blog.posts.new
  end

  def create
    blog = Blog.friendly.find(params[:blog_id])
    if @post = blog.posts.create!(post_params)
      redirect_to [blog, @post], notice: "Post was created successfully."
    else
      render :new, error: "Error creating post. Please try again."
    end
  end

  def edit
    @post = Post.friendly.find(params[:id])
    @store = @post.blog.store
  end

  def update
    @post = Post.friendly.find(params[:id])
    if @post.update(post_params)
      redirect_to [@post.blog, @post], notice: "Post was updated successfully."
    else
      render :edit, error: "Error updating post. Please try again."
    end
  end

  def destroy
    post = Post.friendly.find(params[:id])
    @blog = post.blog
    if post.destroy
      redirect_to [@blog.store, @blog], notice: "#{post.title} was deleted successfully."
    else
      render post, error: "Error deleting store. Please try again."
    end
  end

  def post_params
      params.require(:post).permit(:body, :title)
  end
end
