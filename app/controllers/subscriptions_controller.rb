class SubscriptionsController < ApplicationController
  def index
    render :json => Subscription.find(:all)
  end

  # GET /subscriptions/1
  def show
    @subscription = Subscription.find params['id']
    render :json => @subscription
  end


  # POST /subscriptions
  def create
    @subscription = Subscription.new params['subscription']
    if @subscription.save
      render :nothing => true, :status => 201
    else
      render :nothing => true, :status => 400
    end
  end

  # PUT /subscriptions/1
  def update
    @subscription = Subscription.find params['id']
    if @subscription.update_attributes params['subscription']
      render :nothing => true, :status => 204
    else
      render :nothing => true, :status => 400
    end
  end

  # DELETE /subscriptions/1
  def destroy
    if Subscription.destroy params['id']
      render :nothing => true, :status => 204
    else
      render :nothing => true, :status => 400
    end
  end
end
