# Single Board Computer Onboarding
## RTC Setup


## Git Repo Management 

### VaLo Node DC 


- Downloading the git repo 
```git clone git@github.com:mi3nts/vaLoNodeDC.git ```

- Upload the credentials file to `/home/teamlary/gitHubRepos/vaLoNodeDC/firmware/xu4Mqtt/mintsXU4`
- Update cron job 
  `cat /home/teamlary/gitHubRepos/vaLoNodeDC/firmware/xu4Mqtt/xu4Cron.txt`
  `crontab -e`
  
- Update sudo cron job 
  `cat /home/teamlary/gitHubRepos/vaLoNodeDC/firmware/xu4Mqtt/sudoXu4Cron.txt`
  `sudo crontab -e`

- Reboot
  `sudo reboot`

- Check the DB 

  
