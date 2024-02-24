# Git Intro 

## Introduction 

### Create a new repo 
To create a new repository on Github web, click the green "New" button located near the Repositories subheading. Name the repo, then write a short description of the project. Set the provacy settings for the Repo, add a README file, and choose the MIT License. 
To create a new repository through control terminal commands, the git init command will be necessary. First, cd to the root project folder where the repo will go. To cd means to "change directory", or modify the file path. Then, execute the git init command to set up the repo. Type the following into the control terminal: 

cd path/to/folder
git init

Another way to execute the same function is by typing the following into the control terminal: 

git init <project directory>

### Add an SSH key 
An SSH, or Secure Shell Protocol, is a way to write to repositories and authenticate your identity to your local machine by using a private key. SSH keys are also used to sign commits to verify who made modifications to a repo. Before adding a new SSH key to the account, check for existing keys by typeing the following command into the control terminal: 

$ ls -al ~/.ssh

Doing so will list all the files in your SSH directory. If you receive an error that no files exist, there are no files in the SSH directory, and you will have to generate a new SSH key. To generate a new key, type the following into your control terminal: 

ssh-keygen -t ed25519 -C "your_email@example.com"

Make sure to use the email that is associated with your GitHub account when typing your email address into the command prompt. Verify the location of the key by pressing enter, then enter a secure passphrase when prompted. Then, copy the SSH key to your clipboard. 
Open your GitHub web and go to your account settings by clicking on your profile picture, then the gears icon in the drop down menu. Configure to the SSH and GPG Keys subsection on the left side of the page. Click the green "New SSH key" button on the right side of the screen to add a new SSH key to the account. Title the key with the name of the local machine, select the purpose of the key (authentication or signing commits), then paste the key from your clipboard into the Key textbox. Finally, press the green "Add SSH Key" button at the bottom of the page.

### Add code to the repo
To add code to the repository, use the git commit command to update modifications to the local repo. TO do this through the control terminal, type the following into the comman prompt: 

git commit -m "description of changes made"

Inside the quotation marks, write comments on what the commit entails of, including any modifications made to the code. 


