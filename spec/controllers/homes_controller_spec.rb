require 'spec_helper'

describe HomesController do
  describe "#index" do
    it "should"
  end

  describe "#show" do
    it "should fetch the image" do
      username = "shayne"
      PhotoGetter.should_receive(:get_recent_photo_url).with(username).and_call_original
      get :show, {username: username}
    end

    it "should redirect to index" do
      username = "shayne"
      get :show, {username: username}
      expect(response).to redirect_to root
  end
end
