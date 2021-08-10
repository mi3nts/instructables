# Rsync   

## Examples of Rsync 
- One way sync with  
```rsync -avzrtu -e ssh /home/teamlary/mintsData/ mintsdata@10.202.42.15:/volume1/MINTS/```

 - rsync with sshpass 
```sshpass -p "password" rsync -avzrtu -e ssh /home/teamlary/mintsData/ mintsdata@10.202.42.15:/volume1/MINTS/```

- Only send csv files 
``` sshpass -p "password" rsync -avzrtu -e ssh --include='*.csv' --include='*/' --exclude='*' mintsdata@192.168.1.176:/volume1/MINTSNASCAR/reference /media/teamlary/teamlary3/air930/mintsData/reference  ```


- On ssh key failiures 
try ```  restorecon ```

