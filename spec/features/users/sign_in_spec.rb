# User to sign in and visit protected areas of the site
feature 'Sign in', :omniauth do

	# Scenario: User can sign in with valid account
	#  When I sign in and then see success message
	scenario "user can sign in with valid account" do
		signin
		expect(page).to have_content("Sign out")
	end

	# Scenario: User cannot sign in with invalid account
	#  Given no account and can't sign in
	#  When I sign in and then I see an authentication error message
	scenario 'user cannot sign in with invalid account' do
		OmniAuth.config.mock_auth[:twitter] = :invalid_credentials
		visit root_path
		expect(page).to have_content("Sign in")
		click_link "Sign in"
		expect(page).to have_content('Authentication error')
	end

end


