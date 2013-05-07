require 'spec_helper'

describe HomesController do

  describe "#show" do
    it "should fetch the image" do
      username = "shayne"
      PhotoService.should_receive(:get_recent_photo).with(username).and_call_original
      get :show, {username: username}
    end

    it "should render index" do
      pending
      username = "shayne"
      get :show, {username: username}
      expect(response).to render_template root
    end

  end
end
