# Module 5 Linux

## TASK 5.2

1. The /etc/passwd contains one entry per line for each user of the system. All fields are separated by a colon (:) symbol. 
Total of seven fields as follows.

<img src="screenshots/Screenshot_1.jpg" height="240px" width="1000px" >

- Username
- Password: An x character indicates that encrypted password is stored in `/etc/shadow` file.
- User ID (UID): Each user must be assigned a user ID (UID). UID 0 (zero) is reserved for root and UIDs 1-99 are reserved for other predefined accounts. Further UID 100-999 are reserved by system for administrative and system accounts/groups.
- Group ID (GID): The primary group ID (stored in `/etc/group` file)
- User ID Info: The comment field. It allow you to add extra information about the users such as user’s full name, phone number etc. This field use by `finger` command.
- Home directory: The absolute path to the directory the user will be in when they log in. If this directory does not exists then users directory becomes `/`
- Command/shell: The absolute path of a command or shell (`/bin/bash`).

  The `/etc/group` stores group information or defines the user groups i.e. it defines the groups to which users belong. There is one entry per line, and each line has the following format (all fields are separated by a colon (:)
  
  <img src="screenshots/Screenshot_2.jpg" height="520px" width="400px" >
  
 - group_name
 - Password: An x character indicates that encrypted password is stored in `/etc/shadow` file.
 - Group ID (GID): Each user must be assigned a group ID. You can see this number in your /etc/passwd file.
 - Group List: It is a list of user names of users who are members of the group. The user names, must be separated by commas.

2. 
