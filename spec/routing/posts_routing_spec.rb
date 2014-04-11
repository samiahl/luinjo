require "spec_helper"

describe PostsController do
  # Post Fabricator has a valid user and an Information Cone
  let(:post) { Fabricate(:post) }

  describe "routing" do
    let(:prefix) { '/feeds' }
    it { should route(:post, "#{prefix}/#{post.information_cone.id}/posts").to(controller: 'posts', action: 'create', information_cone_id: post.information_cone.id) }
    it { should route(:get, "#{prefix}/#{post.information_cone.id}/posts/#{post.id}").to(controller: 'posts', action: 'show', information_cone_id: post.information_cone_id, id: post.id) }
  end
end
