Feature:
    In order to test a first search in Europe
    As a developer 
    I want to make sure that I can search in the Netherlands, and that the results reapear.

Background:
    Given I open the url "https://www.funda.nl"
    Then I wait on searchBox to exist
    And I click on the link "Europa"
    And I pause for 500ms

Scenario: Check title of website before search
    Then I expect that the title is "Zoek huizen en appartementen in Europa [funda]"

Scenario: Search in Europe
    And I expect that element "#content > div.home-search > div.search-block.has-price-range > form > div.search-block__body > p" does not exist
    And the element "#content > div.home-search > div.search-block > form > div.search-block__body > div > div > button" is visible
    And the button "#content > div.home-search > div.search-block > form > div.search-block__body > div > div > button" contains the text "Zoek"
    When I click on the button "#content > div.home-search > div.search-block > form > div.search-block__body > div > div > button"
    Then I expect that the title is "Europese woningen te koop en te huur in Europa [funda]"
    And I expect that the inputfield from element "#Land" is "heel-europa"

Scenario: I go back to the mainpage and have a previous search
    And I expect that element "#content > div.home-search > div.search-block > form > div.search-block__body > p > a" does exist
    And I expect that element "#content > div.home-search > div.search-block > form > div.search-block__body > p > a" matches the text "Europa"

Scenario: I click on the previous search and it will direct me to Europa
    When I click on the link "Europa"
    Then I expect that the title is "Zoek huizen en appartementen in Europa [funda]"
