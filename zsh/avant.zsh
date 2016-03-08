########### Avant stuff #############
export ARCHFLAGS="-arch x86_64"

if hash docker-machine 2>/dev/null; then
    export DEFAULT_DOCKER_MACHINE="default"
    docker_running=$(docker-machine status $DEFAULT_DOCKER_MACHINE)
    if [[ "$docker_running" == *"Running"* ]]
    then
            eval "$(docker-machine env $DEFAULT_DOCKER_MACHINE)"
            export DOCKER_IP="$(docker-machine ip)"
            export REDIS_URL="redis://$DOCKER_IP:6379"
            export PHILOTIC_RABBIT_HOST=$DOCKER_IP
            echo "Docker-machine is running at $DOCKER_HOST."
    fi
fi

export DEBUG_ASSETS=true
alias av="cd ~/code/avant-basic"

