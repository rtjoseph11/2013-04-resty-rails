class GroupsController < ApplicationController
  # GET /groups
  def index
    render :json => Group.find(:all)
  end

  # GET /groups/1
  def show
    @group = Group.find params['id']
    render :json => @group
  end


  # POST /groups
  def create
    @group = Group.new params['group']
    if @group.save
      render :nothing => true, :status => 201
    else
      render :nothing => true, :status => 400
    end
  end

  # PUT /groups/1
  def update
    @group = Group.find params['id']
    if @group.update_attributes params['group']
      render :nothing => true, :status => 204
    else
      render :nothing => true, :status => 400
    end
  end

  # DELETE /groups/1
  def destroy
    if Group.destroy params['id']
      render :nothing => true, :status => 204
    else
      render :nothing => true, :status => 400
    end
  end
end
