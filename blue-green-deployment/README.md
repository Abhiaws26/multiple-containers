# Blue-Green Deployment in Docker Swarm

## Step 1: Initialize Swarm
docker swarm init

## Step 2: Create overlay network
docker network create --driver overlay bg-net

## Step 3: Deploy Blue app
docker stack deploy -c stack-blue.yml bg

## Step 4: Deploy Load Balancer (Blue active)
docker stack deploy -c stack-lb-blue.yml lb

## Test
curl http://localhost:8080
→ Hello from BLUE v1

## Step 5: Deploy Green app
docker stack deploy -c stack-green.yml bg

## Step 6: Switch LB to Green
docker stack deploy -c stack-lb-green.yml lb

## Test
curl http://localhost:8080
→ Hello from GREEN v2

## Rollback
docker stack deploy -c stack-lb-blue.yml lb
