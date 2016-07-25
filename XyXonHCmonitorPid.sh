#!/usr/bin/env bash
#nohup pio train -- --driver-class-path ~/PredictionIO/lib/postgresql-9.4-1204.jdbc41.jar > /dev/null 2>&1 &
nohup pio train -- --driver-memory 6G --executor-memory 6G --driver-class-path ~/PredictionIO/lib/postgresql-9.4-1204.jdbc41.jar > train.out 2>&1 &
java_pid=$!
echo $java_pid
 echo "" > ./completed
while(true); do
    sleep 5s
    clear
    if [ -e /proc/$java_pid ]; then
        echo "$(date)" > ./completed
        echo "Running" >> ./completed
         echo "Running pid $java_pid"

       # /sbin/shutdown -h now
    else
        echo "$(date)" > ./completed
        echo "Complete" >> ./completed
        echo "Complete"
        if grep "Training completed successfully" train.out > /dev/null
                then
                echo "Training completed successfully"  >> ./completed
                echo "Training completed successfully"  
                if [ -e /proc/$deploy_pid ]; then
                        kill  $deploy_pid
                        echo " $deploy_pid kill the deploy_pid"
                #sleep 1m
                fi

                        echo "Going to deploy" 
                        nohup pio deploy -- --driver-class-path ~/PredictionIO/lib/postgresql-9.4-1204.jdbc41.jar > deploy.out 2>&1 &
                        deploy_pid=$!
                        #break
                        sleep 10m
                        echo "Going to train"
                        nohup pio train -- --driver-memory 6G --executor-memory 6G --driver-class-path ~/PredictionIO/lib/postgresql-9.4-1204.jdbc41.jar > train.out 2>&1 &
                        java_pid=$!
                        echo $java_pid
        fi
    fi
done
~                                                                                                            
~    