Feature: Test the page title
    As a developer
    I want to be able to test if a the yeoman generated app has a certain title

    Background:
        Given I open the site "/"

    Scenario: Test if the demo app has the title "Angular Full-Stack Generator"
        Given the title is "Angular Full-Stack Generator"
        Then  I expect that element "#banner h1" contains the text "'Allo, 'Allo!"

    Scenario: Test if the demo app does not have the title "Google"
        Given the title is not "Google"
        And   the page url is not "https://www.google.com/"
        Then  I expect that element "h1" not contains the text "Google"
