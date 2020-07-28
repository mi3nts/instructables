
# Get to matlab interface 
```matlab -nodesktop -nodisplay ```

# Matlab External Run
 ```matlab -nodesktop -nodisplay ex.m  ```
 
 # Create parpool 
 ```
parpool('myProf',16)
```
- Number of workers = 16
- Parpool name = myProf
 
 
 
 # Delete current Parpool 
 ```
 poolobj = gcp('nocreate');
 delete(poolobj);
 ```

