#!/bin/bash

#!/bin/bash



# Define the directory where log files are stored

log_directory="/var/log/app_logs"



# Define the number of days to keep log files

days_to_keep=7



# Find and delete log files older than specified days

find "$log_directory" -type f -name "*.log" -mtime +$days_to_keep -exec rm {} \;



# Log the cleanup operation

echo "Log cleanup completed at $(date)" >> /var/log/log_cleanup.log


