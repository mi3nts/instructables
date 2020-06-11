## Create a new sudo User 
On the command window type the following commands and ener data as par instructed:
- Create user:
`sudo adduser teamlary` </br> 
- Provide sudo priviledges to the user: 
`sudo usermod -aG sudo teamlary`</br>
- Once the user is created, switch to the newly created user
`su - teamlary`
- Check for attained priveledges:
` sudo whoami`</br>
The output should be `root`

## Deleting Users 
`sudo su -`
`userdel odroid`
`userdel -r odroid`
