class StatusesController < ApplicationController
  # GET /statuses
  def index
    render :json => Status.find(:all)
  end

  # GET /statuses/1
  def show
    @status = Status.find params['id']
    render :json => @status
  end


  # POST /statuses
  def create
    @status = Status.new params['status']
    if @status.save
      render :nothing => true, :status => 201
    else
      render :nothing => true, :status => 400
    end
  end

  # PUT /statuses/1
  def update
    @status = Status.find params['id']
    if @status.update_attributes params['status']
      render :nothing => true, :status => 204
    else
      render :nothing => true, :status => 400
    end
  end

  # DELETE /statuses/1
  def destroy
    if Status.destroy params['id']
      render :nothing => true, :status => 204
    else
      render :nothing => true, :status => 400
    end
  end
end
