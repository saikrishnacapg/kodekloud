# kodekloud
Task 1 - Docker Swarm Stack that would run a container with privileged mode
   step 1: Install docker and docker-compose
   step 2: docker swarm init
   step 3: go to the task1 folder run the following command
   step 4: docker service deploy --compile-file docker-compose.yml task1
   step 5: Run the following Command 
      
      docker ps 
      CONTAINER ID   IMAGE           COMMAND                  CREATED          STATUS          PORTS                               NAMES
        7dcd6e9c9647   nginx:latest    "/docker-entrypoint.…"   38 seconds ago   Up 36 seconds   0.0.0.0:80->80/tcp, :::80->80/tcp   nginx-service
      21dccc565fc7   docker:latest   "docker-entrypoint.s…"   39 seconds ago   Up 37 seconds                                       task1_nginx-test.utltld44opwl89ap7w3rkd410.n3xbghbc7lpt6molzrgq8bh6r
   
   step 6: Validate if the container which you are wishing to start is started as privileged container
      
      docker inspect --format='{{.HostConfig.Privileged}}' 7dcd6e9c9647
      true

 Task 2 -   


