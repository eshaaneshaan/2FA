background_task() {
    while true; do

	echo "This is a message from the background task."
	sleep 1
    done

}

background_task &
