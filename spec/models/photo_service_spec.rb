require 'spec_helper'

describe PhotoService do
  describe "get_recent_photo" do
    context "with a real user" do
      it "returns a photo" do
        VCR.use_cassette "photos/shayne" do
          username = "shayne"
          photo = PhotoService.get_recent_photo(username)
          expect(photo).to include("http://distilleryimage3.s3.amazonaws.com")
        end
      end
    end
  end
end
