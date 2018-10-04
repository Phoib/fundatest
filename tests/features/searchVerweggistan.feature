Feature:
    In order to test if I can search for the non existing country of Verweggistan (Far-far-away-stan, ask Scrouge McDuck)
    As a developer 
    I want to make sure that I get error messages when I search for non existing places

Scenario: Search for Ve
    Given I open the url "https://www.funda.nl"
    Then I wait on searchBox to exist
    And I expect that element "#autocomplete-input" does exist
    And I expect that element "#content > div.home-search > div.search-block.has-price-range > form > div.search-block__body > div > fieldset.search-block__location-filters > div.autocomplete.is-dirty > div" is not visible
    When I click on the element "#autocomplete-input"
    And I press "V"
    And I press "e"
    And I pause for 500ms
    Then I expect that element "#content > div.home-search > div.search-block.has-price-range > form > div.search-block__body > div > fieldset.search-block__location-filters > div.autocomplete.is-dirty > div" is visible

Scenario: Continue searching for Verweggistan, no suggestion comes
    And I press "r"
    And I press "w"
    And I press "e"
    And I press "g"
    And I press "g"
    And I press "i"
    And I press "s"
    And I press "t"
    And I press "a"
    And I press "n"
    And I pause for 500ms
    Then I expect that element "#content > div.home-search > div.search-block.has-price-range > form > div.search-block__body > div > fieldset.search-block__location-filters > div.autocomplete.is-dirty > div" is not visible

Scenario: Continue searching for Verweggistan, an error pops up that the location cannot be found
    When I press "Enter"
    And I pause for 500ms
    Then I expect that element "#content > div.home-search > div.search-block.has-price-range > form > div.search-block__body > div > fieldset.search-block__location-filters > div.autocomplete.is-dirty.is-open > div > h4.autocomplete-no-suggestion-message" is visible
    And I expect that element "#content > div.home-search > div.search-block.has-price-range > form > div.search-block__body > div > fieldset.search-block__location-filters > div.autocomplete.is-dirty.is-open > div > h4.autocomplete-no-suggestion-message" contains the text "Ai! Deze locatie kunnen we helaas niet vinden."

Scenario: When I force the search, I encounter an error message
    When I press "Enter"
    And I pause for 500ms
    Then I expect that the title is "Funda"
    And I expect that element "#content > div > div > h1 > span.location-suggestions-header-content" contains the text "We kunnen verweggistan niet vinden"

