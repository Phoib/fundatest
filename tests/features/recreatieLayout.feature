Feature:
    In order to check the layout of recreatie
    As a developer 
    I want to make sure that it does not look like koop or huur

Background:
    Given I open the url "https://www.funda.nl"
    Then I wait on searchBox to exist
    And I click on the link "Recreatie"
    And I pause for 500ms

Scenario: Check if the layout is different
    Then I expect that element "#autocomplete-input" does exist
    And I expect that element "#Straal" does exist
    And I expect that element "#range-filter-selector-select-filter_koopprijsvan" is not visible
    And I expect that element "#range-filter-selector-select-filter_koopprijstot" is not visible

Scenario: Make a search
    When I click on the button "#content > div.home-search > div.search-block > form > div.search-block__body > div > div > button"
    Then I expect that the title is "Recreatiewoningen te koop en te huur in Nederland [funda]"
    And I expect that the inputfield from element "#autocomplete-input" is "Nederland"

Scenario: Check if previous searches works
    And I expect that element "#content > div.home-search > div.search-block > form > div.search-block__body > p > a" does exist
    And I expect that element "#content > div.home-search > div.search-block > form > div.search-block__body > p > a" matches the text "Nederland"
