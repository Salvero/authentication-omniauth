#Feature: Sign out
# Sign out and protect my account from unauthorized access
feature 'Sign out', :omniauth do 
	
	#Scenario: User signs out successfully
	# Signed in
	# When I sign out and then see signed out message
	scenario 'user signs out successfully' do
		signin
		click_link 'Sign out'
		expect(page).to have_content 'Signed out'
	end

end