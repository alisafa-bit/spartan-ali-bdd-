Feature: security test scenario
  Scenario: Navigate to sign in page and sign in with valid username and valid password.
  Validate error message display "Wrong username or password"
  #Given Open and closing browser is being called by Hooks
    When user click on sign in link
    Then validate user is in sign in page
    When user enter "mnm87@gmail.com" and "Password_87" and click on login
    Then user should be able to see account link

  Scenario Outline: Navigate to sign in page and sign in with valid username and invalid password.
  Validate error message display "Wrong username or password"
    #Given Open and closing browser is being called by Hooks
    When user click on sign in link
    Then validate user is in sign in page
    When user enter "<username>" and "<password>" and click on login
    Then user should see error "wrong username or password"
    Examples:
    |username|password|
    |mnm87@gmail.com|invalidPassword|
    |mnm7@gmail.com|Password_87|
    |mnm8s7@gmail.com|invalidPassword|