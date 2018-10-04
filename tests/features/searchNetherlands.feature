Feature:
    In order to test a first search in the Netherlands
    As a developer 
    I want to make sure that I can search in the Netherlands, and that the results reapear.

Background:
    Given I open the url "https://www.funda.nl"
    Then I wait on searchBox to exist

Scenario: Check title of website before search
    Then I expect that the title is "Zoek huizen en appartementen te koop in Nederland [funda]"

Scenario: Search in the Netherlands
    And I expect that element "#content > div.home-search > div.search-block.has-price-range > form > div.search-block__body > p" does not exist
    And the element "#content > div.home-search > div.search-block.has-price-range > form > div.search-block__body > div > div > button" is visible
    And the button "#content > div.home-search > div.search-block.has-price-range > form > div.search-block__body > div > div > button" contains the text "Zoek"
    When I click on the button "#content > div.home-search > div.search-block.has-price-range > form > div.search-block__body > div > div > button"
    Then I expect that the title is "Koopwoningen Nederland - Huizen te koop in Nederland [funda]"
    And I expect that the inputfield from element "#autocomplete-input" is "Nederland"

Scenario: I go back to the mainpage and have a previous search
    And I expect that element "#content > div.home-search > div.search-block.has-price-range > form > div.search-block__body > p" does exist
    And I expect that element "#content > div.home-search > div.search-block.has-price-range > form > div.search-block__body > p > a" does exist
    And I expect that element "#content > div.home-search > div.search-block.has-price-range > form > div.search-block__body > p > a" matches the text "Nederland"

Scenario: I click on the previous search and it will direct me to Nederland
    When I click on the link "Nederland"
    Then I expect that the title is "Koopwoningen Nederland - Huizen te koop in Nederland [funda]"
    And I expect that the inputfield from element "#autocomplete-input" is "Nederland"
