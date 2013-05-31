class CommentsController < ApplicationController
  def index
  end

  # GET /comments/1
  def show
  end


  # POST /comments
  def create
    newComment = Comment.new params['comment']
    if newComment.save
      render :nothing => true, :status => 201
    else
      render :nothing => true, :status => 400
    end
  end

  # PUT /comments/1
  def update
  end

  # DELETE /comments/1
  def destroy
  end
end
