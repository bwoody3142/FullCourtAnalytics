# Full Court Analytics Development (via Docker)
This document explains how to replicate and successfully run the program using Docker.

### Install Prerequisites
* Download and Install Docker Desktop (v2.5.0.0 works and has been tested)
  * Follow this link for the download:  <a href="https://www.docker.com/products/docker-desktop" target="_blank">https://www.docker.com/products/docker-desktop</a>
  
### Cloning the Repository 
* Clone this repository by using the following command:
  * `git clone https://github.com/bwoody3142/FullCourtAnalyticsSrc.git`
 
### Testing and Running
* Using the terminal on your computer (Windows- Windows PowerShell, Mac- ), use the `cd` command to navigate where you cloned the repository to. 
* After locating the folder named "FullCourtAnalyticsSrc", then use the `cd fca` command to view the fca folder. 
* Then, use the command `docker build -t fca .`
* After it is finished building, use the command `docker run -p 3000:3000 -d fca`
* Then, go to your browser (Google Chrome, FireFox, or Microsoft Edge), type in `localhost3000` in the search bar. 

 
  
