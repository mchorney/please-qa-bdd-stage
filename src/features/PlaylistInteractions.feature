Feature: PlaylistInteractions
    Scenario: User creates a playlist
        Given I open the url "https://koelapp.testpro.io"
        And  I set "testpro.user97@testpro.io" to the inputfield "[type='email']"
        And I pause for 2000ms
        And I set "te$t$tudent" to the inputfield "[type='password']"
        And I click on the button "//button[@type='submit']"
        And I pause for 1000ms
        When I click on the element "//i[@class='fa fa-plus-circle control create']"
        And I pause for 1000ms
        Then I expect that element "//input[@placeholder='↵ to save']" becomes displayed
        And I pause for 1000ms
        And I set "songs1234" to the inputfield "//input[@placeholder='↵ to save']"
        And I pause for 1000ms
        And I press "Enter"
        And I pause for 2000ms
        Then I expect that element "//*[contains(text(),'son')]" does exist




