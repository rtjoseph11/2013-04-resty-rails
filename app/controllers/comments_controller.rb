class CommentsController < ApplicationController
  def index
    render :json => Comment.find(:all)
  end

  # GET /comments/1
  def show
    @comment = Comment.find params['id']
    render :json => @comment
  end


  # POST /comments
  def create
    @comment = Comment.new params['comment']
    if @comment.save
      render :nothing => true, :status => 201
    else
      render :nothing => true, :status => 400
    end
  end

  # PUT /comments/1
  def update
    @comment = Comment.find params['id']
    if @comment.update_attributes params['comment']
      render :nothing => true, :status => 204
    else
      render :nothing => true, :status => 400
    end
  end

  # DELETE /comments/1
  def destroy
    if Comment.destroy params['id']
      render :nothing => true, :status => 204
    else
      render :nothing => true, :status => 400
    end
  end
end
