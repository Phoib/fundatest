Feature:
    In order to check the landing page layout
    As a developer 
    I want to make sure that everything looks as expected


Scenario: Check the layout of the website
    Given I open the url "https://www.funda.nl"
    Then I expect that the title is "Zoek huizen en appartementen te koop in Nederland [funda]"
    And I wait on searchBox to exist
    And I expect that element "#autocomplete-input" does exist
    And I expect that element "#Straal" does exist
    And I expect that element "#range-filter-selector-select-filter_koopprijsvan" does exist
    And I expect that element "#range-filter-selector-select-filter_koopprijstot" does exist
