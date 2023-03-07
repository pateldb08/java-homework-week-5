Feature:Bookcategory

  Background: I should be able to see homepage
    Given enter URL " https://demo.nopcommerce.com/" in browser
    And   I am on homepage

  Scenario Outline: I should be able to see top menu tabs on homepage with categories
    When I am on homepage
    Then I should be able to see top menu tabs with categories "<catagories>"
    Examples:
      | Categories        |
      | Computer          |
      | Electronics       |
      | Apparel           |
      | Digital downloads |
      | Books             |
      | Jewellery         |
      | Gift card         |

  Scenario Outline: I should be able to see book page with filters
    When I select book category from top menu tabs on homepage
    Then I should be navigated to book catagory page
    And  I should be able to see "<filters>"
    Examples:
      | Filters  |
      | short by |
      | Display  |
      | The Grid |
      | List tab |

  Background:

  Scenario Outline: I should be able to list of terms of each filter
    Given  I am on the book page
    When   I click on "<filter>"
    Then   I should be able to see "<list>" in drop down menu
    Examples:
      | Filter  | list                                                                         |
      | sort by | Name: A to Z,Name: Z to A, Price: Low to High, Price: Highto Low, Created on |
      | Display | 3 , 6 , 9                                                                    |

  Scenario Outline: I should be able to choose any filter option with specific result
    Given I am on book catagory page
    When  I click on "<filter>"
    And   I click on "<option>"
    Then  I should be able to choose any option from the list
    And   I should be abel to see "<result>"
    Examples:
      | filter  | option             | result                                                            |
      | Sort by | Name : A to Z      | Sorted product with the product name in alphabetical order A to Z |
      | Sort by | Name : Z to A      | Sorted product with the product name in alphabetical order Z to A |
      | Sort by | Price: low to high | sorted products with the price in descending order                |
      | Sort by | Price: high to low | sorted products with the price in ascending order                 |
      | Sort by | Created on         | Recently added product should show first                          |
      | Display | 3                  | 3 products in a page                                              |
      | Display | 6                  | 6 products in a page                                              |
      | Display | 9                  | 9 products in a page                                              |

  Scenario Outline:  I should be able to see  prodcut display format according display format type
  as per given picture in srs document

    Given  I am on book page
    When   I click on "<display format icon>"
    Then   I should be able to see  prodcut display format according display format type as per given picture in SRS document

    Examples:
      | display format icon |
      | Grid                |
      | List











