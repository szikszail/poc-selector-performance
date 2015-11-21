Feature: Testing selector performance
  As a developer
  I try different selectors many time
  So I can check which selector is the fastest
    
  Scenario Outline: Checking selector - <type>: <selector>
    Given test page is opened
    When the <type>: "<selector>" selector is measured <number> times
        
    Examples:
      | type  | number | selector                                                       |
      | xpath | 300    | //table[contains(@class,"test-table")]/tbody/tr/td             |
      | css   | 300    | table.test-table > tbody > tr > td                             |
      | xpath | 300    | //table[contains(@class,"test-table")]//*[2]                   |
      | css   | 300    | table.test-table *:nth-child(2)                                |
      | xpath | 300    | //table[contains(@class,"test-table")]//*[@id="selected-cell"] |
      | css   | 300    | #selected-cell                                                 |
      | id    | 300    | selected-cell                                                  |