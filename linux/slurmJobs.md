# Slurm Jobs 

## An example Slurm Job 
***utdNodesRun01.sh:***
```
# 
#SBATCH -J utdNodes01         # Job name
#SBATCH -o job.%j.out         # Name of stdout output file (%j expands to jobId)
#SBATCH -N 1                  # Total number of nodes requested
#SBATCH -n 16                 # Total number of mpi tasks requested
#SBATCH -t 24:00:00           # Run time (hh:mm:ss) - 24 hours

ml load matlab
matlab -nodesktop -nodisplay -nosplash -r 'try utdNodesOptSolo2(1); catch; end; quit'
```
On this example the job request 1 node and of  that one node it requests 16 cores.

## Submit the job to the queue 
```
sbatch utdNodesRun01.sh
```

## Submitting Parrelel Jobs
***utdNodesAllRun.sh:***
```
 #!/bin/bash

#SBATCH -J utdNodesRun        # Job name
#SBATCH -o utdNodes.%j.out    # Name of stdout output file (%j expands to jobId)
#SBATCH -N 1                  # Total number of nodes requested
#SBATCH -n 16                 # Total number of mpi tasks requested
#SBATCH --array=1-15          # Array ranks to run
#SBATCH -t 24:00:00           # Run time (hh:mm:ss) - 24 hours

ml load matlab
echo Running calibration scripts for UTD Node: "$SLURM_ARRAY_TASK_ID"
echo Running on host: `hostname`
matlab -nodesktop -nodisplay -nosplash -r "try utdNodesOptSolo2("$SLURM_ARRAY_TASK_ID"); catch; end; quit"
```

## Submit the job to the queue 
```sbatch utdNodesAllRun.sh```

## Check for job currently running 
```
squeue -u$USER

```
## Check for resources available
```
sinfo -N -l
```






### References
 - [UTD HPC help page](http://docs.oithpc.utdallas.edu/#id39)
 - [TACC help page on Matlab](https://portal.tacc.utexas.edu/software/matlab)
 - [ASK CI help for Job Arrays](https://ask.cyberinfrastructure.org/t/htc-using-slurm-job-arrays/1625) 

