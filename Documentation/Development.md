# Full Court Analytics Development (via Docker)
This document explains how to replicate and successfully run the program using Docker.

### Install Prerequisites
* Download and Install XAMPP (v8.0.0-2 works and has been tested)
  * Follow this link for the download:  <a href="https://www.apachefriends.org/index.html" target="_blank">https://www.apachefriends.org/index.html</a>
* Once you have XAMPP downloaded and installed follow these instructions:
  * Hit the "Start" button next to "Apache"
  * Hit the "Start" button next to "MySQL"
  * Hit the "Admin" button next to "MySQL" this should open a window in your web browser called phpMyAdmin.
  * Copy the text of this file: <a href="https://github.com/bwoody3142/FullCourtAnalytics/raw/master/AuxiliaryFiles/fcadatabase.sql" target="_blank">FCA Database</a>
  * In phpMyAdmin page click the "New" Button
  ![phpMyADmin](https://github.com/bwoody3142/FullCourtAnalytics/raw/master/AuxiliaryFiles/phpMyAdminNew.png)<br>
  * Name the DataTable "fcadatabase" and hit the "Create" Button
  ![phpMyADmin](https://github.com/bwoody3142/FullCourtAnalytics/raw/master/AuxiliaryFiles/phpMyName.png)<br>
  ![phpMyADmin](https://github.com/bwoody3142/FullCourtAnalytics/raw/master/AuxiliaryFiles/phpMyAdminCreate.png)<br>
  
  
* Download and Install Docker Desktop (v2.5.0.0 works and has been tested)
  * Follow this link for the download:  <a href="https://www.docker.com/products/docker-desktop" target="_blank">https://www.docker.com/products/docker-desktop</a>
  * If you have any issues installing Docker, you can use these to guide you:
    * Windows: [https://docs.docker.com/docker-for-windows/install/](https://docs.docker.com/docker-for-windows/install/)
    * Mac: [https://docs.docker.com/docker-for-mac/install/](https://docs.docker.com/docker-for-mac/install/)
  * Once you have Docker Desktop downloaded and installed, run the program on your computer and leave it running while completing the following steps.
  
### Cloning the Repository 
* Clone this repository by using the following command:
  * `git clone https://github.com/bwoody3142/FullCourtAnalyticsSrc.git`
 
### Testing and Running
* Using the terminal on your computer, use the `cd` command to navigate where you cloned the repository to on your computer. 
* After locating the folder named "FullCourtAnalyticsSrc", then use the `cd fca` command because the Dockerfile is located in the fca folder. 
* After running that navigate to the previous directory by typing `cd ..`
* Then, type `cd sever`
After that, type `npm run devStart`
* Then, use the command `docker build -t fca .`
* After it is finished building, use the command `docker run -p 3000:3000 -d fca`
* Then, go to your browser (Google Chrome, Safari, FireFox, or Microsoft Edge), type in `localhost:3000` in the search bar. 
* The react app should start and you will be able to browse the webpage. To use the website, checkout the user manual at: <a href="https://github.com/bwoody3142/FullCourtAnalytics/blob/master/First%20Iteration%20Documentation/User.md" target="_blank">https://github.com/bwoody3142/FullCourtAnalytics/blob/master/First%20Iteration%20Documentation/User.md</a>

 
  
