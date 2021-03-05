# Deployment Documentation

## File System
You will need to be in the root folder of the project. This will be located at <code>FullCourtAnalyticsSrc</code>.

## Starting/Stopping A Docker Container
- First, you need to build your image, by typing `docker-compose build` in the terminal while under the correct folder mentioned above. 
  - This may take a minute to download everything.
- Next, run `docker-compose up -d` to start your Docker container 
- Now you can browse to `localhost:3000` in your browser to reach the web app
- To stop the docker container, simply run `docker-compose down`
  
## Common Docker Commands for Troubleshooting
- To view all running Docker containers: `docker ps`
- To view all Docker containers: `docker ps -a`
- To start container: `docker start {container id}`
- To stop container: `docker stop {container id}`
- To view images: `docker images`
- To delete an image: `docker image rm {image name} -f`

## What To Do If You Are Having Problems With Starting You Docker Container
- View all Docker containers and check to see that your `fca` container is running
- Check to see if your ports are mapped, to do this view running containers and under ports you should see something similar to this: `0.0.0.0:3000->3000/tcp` <br><br>
If either one of the either is not working correctly then you should delete the image and build it up again from the beginning.
