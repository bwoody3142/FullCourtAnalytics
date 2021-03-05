# Full Court Analytics Development (via Docker)
This document explains how to replicate and successfully run the program using Docker.

### Cloning the Repository 
* Clone this repository by using the following command:
  * `git clone https://github.com/bwoody3142/FullCourtAnalyticsSrc.git`

##Setting Up Without Docker
* After you have cloned the FCA repository, navigate to `FullCourtAnalyticsSrc/fca`
* Runs the commands `npm install` and `npm start`.
* The react app should start and you will be able to browse the webpage. To use the website, checkout the user manual at: <a href="https://github.com/bwoody3142/FullCourtAnalytics/blob/master/First%20Iteration%20Documentation/User.md" target="_blank">https://github.com/bwoody3142/FullCourtAnalytics/blob/master/First%20Iteration%20Documentation/User.md</a>

##Setting Up With Docker
* Download and Install Docker Desktop (v2.5.0.0 works and has been tested)
  * Follow this link for the download:  <a href="https://www.docker.com/products/docker-desktop" target="_blank">https://www.docker.com/products/docker-desktop</a>
  * If you have any issues installing Docker, you can use these to guide you:
    * Windows: [https://docs.docker.com/docker-for-windows/install/](https://docs.docker.com/docker-for-windows/install/)
    * Mac: [https://docs.docker.com/docker-for-mac/install/](https://docs.docker.com/docker-for-mac/install/)
  * Once you have Docker Desktop downloaded and installed, run the program on your computer and leave it running while completing the following steps.
   
### Testing and Running
* Using the terminal on your computer, use the `cd` command to navigate where you cloned the repository to on your computer. 
* After locating the folder named "FullCourtAnalyticsSrc", type `cd fca` and then, `docker-compose build` 
* After docker is done building, you can then run `docker-compose up -d`
* Then, go to your browser (Google Chrome, Safari, FireFox, or Microsoft Edge), type in `localhost:3000` in the search bar. 
* The react app should start and you will be able to browse the webpage. To use the website, checkout the user manual at: <a href="https://github.com/bwoody3142/FullCourtAnalytics/blob/master/First%20Iteration%20Documentation/User.md" target="_blank">https://github.com/bwoody3142/FullCourtAnalytics/blob/master/First%20Iteration%20Documentation/User.md</a>
