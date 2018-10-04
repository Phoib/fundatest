Feature:
    In order to test the price boxes
    As a developer 
    I want to make sure that I can refine my search with price ranges

Background:
    Given I open the url "https://www.funda.nl"
    Then I wait on searchBox to exist

Scenario: Search in the Netherlands for 2 million
    And I expect that element "#range-filter-selector-select-filter_koopprijsvan" does exist
    And I expect that element "#range-filter-selector-select-filter_koopprijstot" does exist
    When I click on the element "#range-filter-selector-select-filter_koopprijsvan"
    And I press "PageDown"
    And I press "PageDown"
    And I click on the element "#range-filter-selector-select-filter_koopprijstot"
    And I press "PageDown"
    And I press "PageDown"
    And I click on the element "#range-filter-selector-select-filter_koopprijsvan"
    And I click on the button "#content > div.home-search > div.search-block.has-price-range > form > div.search-block__body > div > div > button"
    Then I expect that element "#content > form > div.container.search-main > div.search-content > div.search-content-header > div.applied-filters.is-visible > div > button" is visible

Scenario: Go back to the page and confirm the filter is still there
    Then I expect that element "#content > div.home-search > div.search-block.has-price-range > form > div.search-block__body > p > a" matches the text "Nederland, € 2.000.000+"

Scenario: I search for impossible searches
    When I click on the element "#range-filter-selector-select-filter_koopprijsvan"
    And I press "PageDown"
    And I press "PageDown"
    And I click on the element "#range-filter-selector-select-filter_koopprijstot"
    And I press "PageUp"
    And I click on the button "#content > div.home-search > div.search-block.has-price-range > form > div.search-block__body > div > div > button"
    And I pause for 500ms
    Then I expect that element "#content > form > div.container.search-main > div.search-content > div.search-content-output > div > h1" is visible 
    And I expect that element "#content > form > div.container.search-main > div.search-content > div.search-content-output > div > h1" matches the text "0 resultaten"

Scenario: I search for more impossible searches
    When I click on the element "#range-filter-selector-select-filter_koopprijstot"
    And I press "PageUp"
    And I press "PageUp"
    And I press "Enter"
    And I pause for 500ms
    And I press "1"
    And I press "Enter"
    And I pause for 500ms
    And I click on the button "#content > div.home-search > div.search-block.has-price-range > form > div.search-block__body > div > div > button"
    And I pause for 500ms
    Then I expect that element "#content > form > div.container.search-main > div.search-content > div.search-content-output > div > h1" is visible 
    And I expect that element "#content > form > div.container.search-main > div.search-content > div.search-content-output > div > h1" matches the text "0 resultaten"
