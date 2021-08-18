# SSH 

SSH (Secure Shell) key is unique pass-code for a local server to get the authentication access to remote srever for transfer the files. 

## Creating SSH key

1. Open terminal on your local computer.
2. Type the text below and Enter.

``` ssh-keygen ```

The default directory where the key saved is

```	/home/username/.ssh/id_rsa ```

3. Press Enter to confirm and pass-code is not necessary.

   After above steps the SSH key is generated and saved in the local computer.
   
   
## Getting Access to GitHub for Local Computer

1. Open terminal on your local computer.
2. Type the text below and Enter to go to the home directory.

``` cd ~ ```

3. Type the text below and Enter to go inside the .ssh folder created by previous steps.

``` cd .ssh ```

4. Type the text below and Enter to see all the details of files inside the .ssh folder.

``` ls -l ```

There should be able to see 2 files:

 id_rsa
 
 id_rsa.pub

Those are the two SSH keys, first one is private key and the second one is pubic key. Public key 	is used to get the access from servers and GitHub. 

5. Type the text below and Enter to read the public key file (id_rsa.pub).

``` cat id_rsa.pub ```

 Once you finish, there will be link on the terminal.

6. Copy the link on the terminal.
7. Login to the GitHub account.
8. Open Account Settings by right click on the profile.
9. Open SSH and GPG keys
10. Click on New SSH key button.
11. Type Laptop in Title box
12. Past the copied SSH key in SSH key box.



## Synchronizing GitHub with Local Computer

1. Login to GitHub and open the folder where the project is saved.
2. Click on the Code button.
3. Copy the pop up link.
4. Open terminal in the local computer.
5. Type the text below to install the Git service in the local computer.

``` sudo apt-get install ```

6. Create 2 folders in you local computer anywhere you want to save synchronized data.

	gitHubRepos
	mintsData

7. Open gitHubRepos folder.
8. Right click on blank space inside the folder and select Open in Terminal.
9. Type the text below and Enter

``` git clone <past the copied link from GitHub> ```

After finish, all the files in GitHub should be seen in the local computer.   
