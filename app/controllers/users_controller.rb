class UsersController < ApplicationController
  def index
    render :json => User.find(:all)
  end

  # GET /users/1
  def show
    @user = User.find params['id']
    render :json => @user
  end


  # POST /users
  def create
    @user = User.new params['user']
    if @user.save
      render :nothing => true, :status => 201
    else
      render :nothing => true, :status => 400
    end
  end

  # PUT /users/1
  def update
    @user = User.find params['id']
    if @user.update_attributes params['user']
      render :nothing => true, :status => 204
    else
      render :nothing => true, :status => 400
    end
  end

  # DELETE /users/1
  def destroy
    if User.destroy params['id']
      render :nothing => true, :status => 204
    else
      render :nothing => true, :status => 400
    end
  end
end