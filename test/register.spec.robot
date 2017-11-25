*** Setting ***
Library             SeleniumLibrary
Suite teardown      Close All Browsers

*** Test Cases ***
Check all required fileds in registration form
    Open Browser        http://angsila.cs.buu.ac.th/~wittawas/601/887240/labs/testdemo/index.php/register       chrome
    Click Element       id=btn_submit   
    Wait Untill Page Contains       The Email field is required.
    Wait Untill Page Contains       The Password field is required.      
    Wait Untill Page Contains       The Re-type Password field is required.
    Wait Untill Page Contains       The Name field is required.

Register successfully when input valid data
    Open Browser        http://angsila.cs.buu.ac.th/~wittawas/601/887240/labs/testdemo/index.php/register       chrome
    Input Text              id=email            waroon1@gmail.com
    Input Password          id=password         babybew
    Input Password          id=repassword       babybew
    Input Text              id=name             waroon
    Click Element           id=btn_submit       
    Wait Untill Page Contains                   waroon1@gmail.com

