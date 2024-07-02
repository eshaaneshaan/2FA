**This is my 2FA Script**
     
Instructions to use:     
    
1. Make sure you have two Github accounts (if you don't have a second account, use mail.com to make a second email address and create a new github account with it)
2. Create two directories with your main account: One private directory and one public directory
3. Add both your main and your second Github accounts to the private directory, but only add your main account as a contributor to the public directory
4. Clone this repository with this command ```git clone https://github.com/eshaaneshaan/2FA ~/.2FA && cd ~/.2FA```
5. Log into your Github CLI with ```gh auth login``` using your SECOND account which 
6. Fill out the info doc using the info guide doc
7. Run the following command: ```make``` while you're in ```~/.2FA``` directory
8. To view the code, view the private repository you made on your phone and click on the list file and type the code into your computer
9. If an incorrect password is entered, within a minute, you will get an email to the email address you created your main github account with, that will tell you that someone tried to login to your account.
10. Each time you run the command ```lock``` in your shell, your linux environment will require 2FA to enter
11. Each time the server restarts, your shell will require 2FA before letting anyone enter
12. Not even the teacher is able to get past your 2FA because of the safeguards applied
