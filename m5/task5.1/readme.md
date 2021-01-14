# Module 5 Linux

## TASK 5.1 

### PART 1

1. Logged in as root and changed password.

Password change has changed system files /etc/passwd and /etc/shadow, because they contain the user's password.

<img src="screenshots/Sudo+passwdChange.jpg" height="240px" width="800px" >

2. Command passwd has the next parameters:

<img src="screenshots/PasswdOptions.jpg" height="560px" width="800px" >

<img src="screenshots/PasswdOptions_1.jpg" height="270px" width="800px" >

3. List of users:

<img src="screenshots/usersList.jpg" height="240px" width="800px" >

Users permisions: 

<img src="screenshots/UsersPermisions.jpg" height="240px" width="800px" >

Logged in as a testuser1 and checked the permisions:

<img src="screenshots/testuserPermisions.jpg" height="600px" width="800px" >

4. Added a description to testuser1 with the help of command `sudo usermod -c 'just a test user' testuser1`:

<img src="screenshots/userDescription.jpg" height="170px" width="800px" >

Then tried `chfn testuser1` command:

<img src="screenshots/userDesc.jpg" height="370px" width="800px" >

5. Tested 2 commands `--help` *(shows short description about of options)*  and `man` *(shows full description of command)*

<img src="screenshots/helpExample.jpg" height="450px" width="800px" >

<img src="screenshots/manExample.jpg" height="580px" width="800px" >

6. Explored `more` and `less` commands and the main difference is that less command is faster because it does not load the entire file at once and allows navigation though file using page up/down keys and it has a useful feature - `/word-to-seach` option

7. Described in plans that I'm working on laboratory work 1:

<img src="screenshots/fingerTestuser1.jpg" height="240px" width="800px" >

8. Used `ls -la` to list all the contents in home directory *( - for file, d - for directory ) 

<img src="screenshots/lsExample.jpg" height="530px" width="800px" >

### PART 2

