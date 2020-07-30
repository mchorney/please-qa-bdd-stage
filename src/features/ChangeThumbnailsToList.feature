Feature: ViewThumbnailsToList
    Scenario: User login Success
        Given I open the site "/"
        When I pause for 1000ms
        And I add "koeluser97@testpro.io" to the inputfield "//input[@type='email']"
        And I add "te$t$tudent" to the inputfield "//input[@type='password']"
        And I click on the element "//button[@type='submit']"
        When I pause for 2000ms
        Then I expect that element "//input[@type='search']" is displayed
        And I expect that the url is "https://koelapp.testpro.io/#!/home"
    Scenario: User changes a view from thumbnails to list
        When I click on the element "//a[@href='#!/albums']"
        When I pause for 2000ms
        And I click on the element "//a[@class='list']"
        When I pause for 2000ms
        Then I expect that element "//div[@class='albums main-scroll-wrap as-list']" is displayed