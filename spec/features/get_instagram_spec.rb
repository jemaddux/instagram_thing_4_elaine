require "spec_helper"

feature "Getting a photo" do
  scenario %q{As a public, non-authenticated user
    When I visit '/'
    And I enter a username like 'johnkeatley'
    And I click "go"
    Then I see the most recent Instagram photo from that user} do

      VCR.use_cassette "photos/johnkeatley" do
        visit '/'
        fill_in('username', with: 'johnkeatley')
        expect(page).to_not have_selector("img")
        click_button('go')
        expect(page).to have_selector("img")
      end
    end
end
