Feature:
    In order to have my first commit
    As a developer 
    I want to make sure that everything works as expected

Background:
    Given I open the url "https://www.funda.nl"

Scenario: Check title of website after search
    Then I expect that the title is "Zoek huizen en appartementen te koop in Nederland [funda]"

Scenario: Check if the seach element exists
    Then I expect that element "#content > div.home-search > div.search-block.has-price-range" does exist

Scenario: Check if the seach bar exists
    Then I expect that element "#autocomplete-input" does exist

Scenario: Check if the radius selector exists
    Then I expect that element "#Straal" does exist

Scenario: Check if the minimum price selector exists
    Then I expect that element "#range-filter-selector-select-filter_koopprijsvan" does exist

Scenario: Check if the maximum price selector exists
    Then I expect that element "#range-filter-selector-select-filter_koopprijstot" does exist
