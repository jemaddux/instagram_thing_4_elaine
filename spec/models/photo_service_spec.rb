require 'spec_helper'

describe PhotoService do
  describe "get_recent_photo" do
    context "with a real user" do
      it "returns a photo" do
        username = "shayne"
        photo = PhotoService.get_recent_photo(username)
        expect(photo).to be
      end
    end
  end
end
