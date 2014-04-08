require "spec_helper"

describe InformationConesController do
  let(:information_cone) { Fabricate(:information_cone) }

  describe "routing" do

    it { should route(:get, '/').to(controller: 'information_cones', action: 'index')}
    it { should route(:get, "/#{information_cone.id}").to(controller: 'information_cones', action: 'show', id: information_cone.id)}
    it { should route(:get, '/new').to(controller: 'information_cones', action: 'new') }
    it { should route(:get, "/#{information_cone.id}/edit").to(controller: 'information_cones', action: 'edit', id: information_cone.id) }
    it { should route(:post, '/').to(controller: 'information_cones', action: 'create') }
    it { should route(:put, "/#{information_cone.id}").to(controller: 'information_cones', action: 'update', id: information_cone.id) }
    it { should route(:delete, "/#{information_cone.id}").to(controller: 'information_cones', action: 'destroy', id: information_cone.id) }

  end
end
