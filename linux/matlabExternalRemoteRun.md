
# Get to matlab interface 
```matlab -nodesktop -nodisplay ```

# Matlab External Run
 ```matlab -nodesktop -nodisplay ex ```
 
# Running Matlab without holting on a server 
```nohup matlab -r "MC_01_RNN; quit;" >& superNN.log &```
A log file is used to keep track of things('super.log' for this case).
 
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

