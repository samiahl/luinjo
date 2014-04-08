class SubscriptionsController < ApplicationController
  before_action :set_subscription, only: :destroy
  def create
    @user = User.find(params_user)
    @information_cone = InformationCone.find(params_information_cone)
    @subscription = Subscription.new

    @subscription.user = @user
    @subscription.information_cone = @information_cone

    if current_user.equal? @subscription.user && @subscription.save
      redirect_to :back
    else
      redirect_to :back
    end
  end

  def destroy
    if current_user.id.eql? @subscription.user.id
      @subscription.destroy
    end
    redirect_to :back
  end

  private

  def set_subscription
    @subscription = Subscription.find(params[:id])
  end

  def subscription_params
    params.require(:subscription_id)
  end

  def params_user
    params.require(:user_id)
  end

  def params_information_cone
    params.require(:information_cone_id)
  end
end
