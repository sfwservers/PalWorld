 0.30 KB | None |  
     
#!/bin/bash
 
LOGFILE="./crash.log" 
 
while true; do
  ./PalServer.sh -port=9100 -useperfthreads -NoAsyncLoadingThread -UseMultithreadForDS
  EXIT_STATUS=$? # Capture the exit status
 
  # Log the date, time, and exit status to the logfile
  echo "Server crashed with exit status $EXIT_STATUS at $(date)" >> "$LOGFILE"
 
  sleep 60 # Wait for 1min before restarting
done
