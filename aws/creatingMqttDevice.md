# Creating Mqtt Device

- Go to IOT core
- Things --> create things --> create single thing
- Add thing name 'mintsWearableNodeV5-10'
- Add a thing type 'mintsWearableNodes'
- click Next
- Auto generate a certificate 
- Policies --> Create Policy 
- What is a policy --> Access policy, define the bounds of acceess and capabilities
- Add a policy name 'mqttMintsNodesPolicy'
- Policy effect 'Allow'
- Policy action '*'
- Policy resource '*'
- Download all the certifcates available
- Hit done
- Go to security (LHS tab)-> Certificates
- find the created certificate
- Click action button
- Attach thing
- Click Action
- Attach Policy
- > Add this point the thing is all set 

  
  
