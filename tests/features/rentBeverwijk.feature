Feature:
    In order to test if I can search for the rental flats in Beverwijk
    As a developer 
    I want to make sure that I can search for rental flats in Beverwijk

Background:
    Given I open the url "https://www.funda.nl"
    Then I wait on searchBox to exist

Scenario: Click on Huur and search for Beverwijk
    Given I click on the link "Huur"
    Then I wait on searchBox to exist
    And I expect that element "#autocomplete-input" does exist
    And I expect that element "#content > div.home-search > div.search-block.has-price-range > form > div.search-block__body > div > fieldset.search-block__location-filters > div.autocomplete.is-dirty > div" is not visible
    When I click on the element "#autocomplete-input"
    And I press "B"
    And I press "e"
    And I press "v"
    And I pause for 500ms
    Then I expect that element "#content > div.home-search > div.search-block.has-price-range > form > div.search-block__body > div > fieldset.search-block__location-filters > div.autocomplete.is-dirty > div" is visible
    When I press "e"
    And I press "r"
    And I press "w"
    And I press "i"
    And I press "j"
    And I press "k"
    And I pause for 500ms
    Then I expect that element "#content > div.home-search > div.search-block.has-price-range > form > div.search-block__body > div > fieldset.search-block__location-filters > div.autocomplete.is-dirty > div" is visible
    When I click on the button "#content > div.home-search > div.search-block.has-price-range > form > div.search-block__body > div > div > button"
    Then I expect that the title is "Huurwoningen Gemeente Beverwijk - Huizen te huur in Gemeente Beverwijk [funda]"
    And I expect that the inputfield from element "#autocomplete-input" is "Gemeente Beverwijk"
	
Scenario: I go to the mainpage and see last searches
    And I expect that element "#content > div.home-search > div.search-block.has-price-range > form > div.search-block__body > p > a" does not exist
    Given I click on the link "Huur"
    And I expect that element "#content > div.home-search > div.search-block.has-price-range > form > div.search-block__body > p > a" does exist
    And I expect that element "#content > div.home-search > div.search-block.has-price-range > form > div.search-block__body > p > a" matches the text "Gemeente Beverwijk"
