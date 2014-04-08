require 'spec_helper'

describe SubscriptionsController do
  let(:information_cone) { Fabricate(:information_cone) }
  describe "routing" do
    it { should route(:post, "/#{information_cone.id}/subscribe").to(controller: 'subscriptions', action: 'create', information_cone_id: information_cone.id) }
    it { should route(:delete, "/#{information_cone.id}/unsubscribe").to(controller: 'subscriptions', action: 'destroy', information_cone_id: information_cone.id) }
  end
end
