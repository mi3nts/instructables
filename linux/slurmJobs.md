# Slurm Jobs 

## An example Slurm Job 

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
``

