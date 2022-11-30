Scenario: Open site Scenario (no variables)
Given I am on the main application page
Then number of elements found by `By.xPath(//*[@class="top-navigation__item-text"])` is > `0`
When I save number of elements located `By.xPath(//*[@class="top-navigation__item-text"])` to STORY variable `amountOfElementsInitial`

Scenario: Succesfull steps (varibles in Examples table after Scenario)
When I go to the relative URL '/careers'
When I save number of elements located `By.xPath(<xpathWithVariable>)` to STORY variable `amountOfElementsForComparison`
Then `${amountOfElementsInitial}` is = `${amountOfElementsForComparison}`
Examples:
|xpathWithVariable                      |
|//*[@class="top-navigation__item-text"]|


Scenario: Failed scenario (variables in separate table)
!-- This way you can add any comments into your test to give additional explanations
Then `${amountOfElementsInitial}` is = `${variableForFail}`
Examples:
/data/data.table