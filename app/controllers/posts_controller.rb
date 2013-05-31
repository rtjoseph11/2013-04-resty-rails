class PostsController < ApplicationController
  def index
    render :json => Post.find(:all)
  end

  # GET /posts/1
  def show
    @post = Post.find params['id']
    render :json => @post
  end


  # POST /posts
  def create
    @post = Post.new params['post']
    if @post.save
      render :nothing => true, :status => 201
    else
      render :nothing => true, :status => 400
    end
  end

  # PUT /posts/1
  def update
    @post = Post.find params['id']
    if @post.update_attributes params['post']
      render :nothing => true, :status => 204
    else
      render :nothing => true, :status => 400
    end
  end

  # DELETE /posts/1
  def destroy
    if Post.destroy params['id']
      render :nothing => true, :status => 204
    else
      render :nothing => true, :status => 400
    end
  end
end
