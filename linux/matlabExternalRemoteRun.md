
# Get to matlab interface 
```matlab -nodesktop -nodisplay ```

# Matlab External Run
 ```matlab -nodesktop -nodisplay ex.m  ```
 
 # Create parpool 
 ```
parpool('myProf',16)
```
- # numnber of workers = 16
- parpool name = myProf
 
 
 
 # Delete current Parpool 
 ```
 poolobj = gcp('nocreate');
 delete(poolobj);
 ```

