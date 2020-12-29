###output your daily SLURM report###
sacct -o jobid,jobname,submit,state,elapsed,reqmem,maxrss -S 00:00:00 -E now -u dpeede --units=G
#'sacct' displays SLURM job info
#'-o' = the data to be outputted per job in columns
#'jobid' = SLURM jobid when submitted
#'jobname' = SLURM job name when submitted
#'submit' = the time when the SLURM job was submitted and started
#'state' = the status of the SLURM job at the time of executing this code
#'elapsed' = how long the SLURM job ran for
#'reqmen' = the requested amount of memory in gigabits
#'maxrss' = the maximum amount of memory used
#'-S 00:00:00' outputs jobs that have been submitted after midnight
#'-E now' outputs jobs that have been submitted before the current time
#'-u' specifies the SLURM user
#'--units=G' outputs maxrss in gigabytes