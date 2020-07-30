
Feature: ChangeName
    Scenario: User login Success
        Given I open the site "/"
        When I pause for 1000ms
        And I add "koeluser97@testpro.io" to the inputfield "//input[@type='email']"
        And I add "te$t$tudent" to the inputfield "//input[@type='password']"
        And I click on the element "//button[@type='submit']"
        When I pause for 2000ms
        Then I expect that element "//input[@type='search']" is displayed
        And I expect that the url is "https://koelapp.testpro.io#!/home/"
    Scenario: User changes a name
        When I click on the element "#userBadge .name"
        And I add "Many" to the inputfield "//input[@id='inputProfileName']"
        And I press "key"
        When I pause for 3000ms
        Then I expect that element "//span[@class='name']" is displayed

Feature: Logout
    Scenario: User login Success
        Given I open the site "/"
        When I pause for 1000ms
        And I add "koeluser97@testpro.io" to the inputfield "//input[@type='email']"
        And I add "te$t$tudent" to the inputfield "//input[@type='password']"
        And I click on the element "//button[@type='submit']"
        When I pause for 2000ms
        Then I expect that element "//input[@type='search']" is displayed
        And I expect that the url is "https://koelapp.testpro.io#!/home/"
    Scenario: User logout Success and the page information is saved
        When I click on the element "//i[@class=’fa fa-sign-out control']"
        When I pause for 2000ms
        Then I expect that element "//div[@class='login-wrapper']" is displayed

Feature: ShufflesPlaylist
    Scenario: User login Success
        Given I open the site "/"
        When I pause for 1000ms
        And I add "koeluser97@testpro.io" to the inputfield "//input[@type='email']"
        And I add "te$t$tudent" to the inputfield "//input[@type='password']"
        And I click on the element "//button[@type='submit']"
        When I pause for 2000ms
        Then I expect that element "//input[@type='search']" is displayed
        And I expect that the url is "https://koelapp.testpro.io#!/home/"
    Scenario: User shuffles a playlist
        When I click on the element "//a[@href='#!/songs']"
        And I click on the element "#songsWrapper .btn"
        Then I expect that element "//div[@class='song-list-wrap main-scroll-wrap queue']" is displayed