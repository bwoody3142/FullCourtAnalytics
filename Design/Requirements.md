# Functional Requirements
- Home Page -  **HIGH PRIORITY** (Refers to **BR1**)
    - FR 1 - Provide Texts and Images
    - FR 2 - Have the ability to direct you to the sign up page, request information page, and stats information page
- Roster Page -  **ALL MEDIUM PRIORITY** (Refers to **BR2**)
    - FR 3 - Allow users to add and remove players
    - FR 4 - Allow users to change roster information (such as the number a player has)
    - FR 5 - Check boxes which shows the players that are currently the starters
- Upload Page -  **ALL HIGH PRIORITY**
    - FR 6 - Allow users to upload their game film via a YouTube API (Refers to **BR4**)
    - FR 7 - Users will need to fill out text boxes providing game information (such as if it was home or away, score, date, conference or non conference, etc.) (Refers to **BR5**)
- Resources Page -  **ALL LOW PRIORITY** (Refers to **BR6**)
    - FR 8 - Users should be able to click a drop down box to sort the posts by the following: newest/oldest and if it is a text blog post, video blog post, or podcast blog post
- Back End Of Site (Example Below) -  **ALL HIGH PRIORITY** (Refers to **BR5**)
    - FR 9 - There should be a backend homepage that allows admins to see every game that has been uploaded to the site.
    - FR 10 - Next to each video it should give a “breakdown status”, which lets admins know if the game has been broken down fully, partially, or not at all yet.
    - FR 11 - There should be a drop down menu on the backend homepage that brings up all of the teams/users. Admins should be able to select a school to only see their games. 
    - FR 12 - When you click on a game to break down, a page similar to the one below should appear. On the left side of the page, there should be the video and the right hand side should have “buttons”
    - FR 13 - Every single possession in a basketball game will have its own "posession description" associated with it. 
    - FR 14 - Each button will change the stat relative to it in the posession description.
    - FR 15 - Certain buttons will need to have a player associated with them.
    - FR 16 - A few boxes will need to have a number entered into a text box.
    - FR 17 - Every time that the following buttons are clicked, FGA, FGM, 3PA, 3PM, a picture of a half-court should appear. Admins need to be able to click on the picture to associate an X and Y coordinate to the shot. This will allow us to create shot charts.
    - FR 18 - EVERY POSESSION DESCRIPTION SHOULD ALWAYS HAVE THE 5 PLAYERS WHO ARE ON THE COURT ASSOCIATED WITH IT
    - FR 19 - There needs to be a “start clip” and “end clip” buttons. When a possession or play is started, the Admin should be able “start clip” and at the end of the play hit “end clip” which creates a timestamp for that play. Every posession description should have a timestamp associated with it. 
    - FR 20 - There needs to be an “Home Possession Button” and “Opponent Possession” button. This should be below the start and end clip buttons. One of these two buttons will need to be hit every possession to designate whose possession it was. If “opponent possession” is clicked obviously player buttons will not need to be hit.

    ![BackEndPage](https://github.com/bwoody3142/FullCourtAnalytics/blob/master/AuxiliaryFiles/BackEndPage.png)
- Team Home Page -  **ALL HIGH PRIORITY** (Refers to **BR3**)
    - FR 21 - If you click on a game, it should take you to the Video Playback page for that game. 
    - FR 22 - There needs to be a drop down filter that allows users to filter what games are being shown on the homepage at that time. Filters should include: Newest, Games by Season, Non Conference, Conference, Home and Away. 
    - FR 23 - Next to each game, there needs to be the opponent score, date, breakdown status listed. 
- Stat Center
    - FR 24 - Users should be able to filter out their information from a wide variety of filters (all filters will be listed a few pages down in the document). -  **HIGH PRIORITY** (Refers to **BR3**)
    - FR 25 - There should be 5 different types of stats pages that teams can toggle between (basic box score stats, advanced stats, tracking stats, play type stats, and opponent stats) -  **HIGH PRIORITY**(Refers to **BR3**)
    - FR 26 - Stats that are in the top 25% are highlighted Green and stats in the bottom 25 percent are highlighted red on a sliding scale (i.e. if someone is in the 90th percentile it will be a darker green than the 80th percentile). -  **MEDIUM PRIORITY** (Refers to **BR3**)
    - FR 27 - Video Playback for specific stats -  **LOW PRIORITY** (Refers to **BR4**)
- Shot Chart Page (Refers to **BR3**)
    - FR 28 - On the left hand side, there should be every type of filter that users can sort through like the image below.  -  **HIGH PRIORITY**
    - FR 29 - Video Playback for specific areas on the court -  **LOW PRIORITY**

    ![ShotChart](https://github.com/bwoody3142/FullCourtAnalytics/blob/master/AuxiliaryFiles/ShotChart.png)
    ![ShotChart1](https://github.com/bwoody3142/FullCourtAnalytics/blob/master/AuxiliaryFiles/ShotChart1.png)
    ![ShotChart2](https://github.com/bwoody3142/FullCourtAnalytics/blob/master/AuxiliaryFiles/ShotChart2.png)

- Lineup Page (Refers to **BR3/BR4**)
    - FR 30 - There needs to be an option to select any combination of players as well. There will need to be a filter that shows all the players on the roster. Users can select any combination of players and see that stats for when those players were on the floor at the same time.  -  **HIGH PRIORITY**
    - FR 31 - There needs to be a filter where teams can set a minimum amount of possessions. So a User can enter “10”, and only the lineups that have played 10 or more possessions together will be shown.  -  **MEDIUM PRIORITY**
    - FR 32 - There needs to be additional custom filters, such as by Quarter, Conference, Non-Conference, etc.  -  **LOW PRIORITY**
    - FR 33 - Stats that are in the top 25% are highlighted Green and stats in the bottom 25 percent are highlighted red on a sliding scale (i.e. if someone is in the 90th percentile it will be a darker green than the 80th percentile).-  **MEDIUM PRIORITY**
    - FR 34 - Video Playback for a certain lineup -  **LOW PRIORITY**
- Team Video Playback (Refers to **BR2/BR3**)
    - FR 35 - On the left hand side, there needs to be a list of every single possession in the game with a short description of what happened (such as FGM or TO). -  **HIGH PRIORITY**
    - FR 36 - If you click on the play it needs to bring up a longer description of the play, such as FGM by Player X Assisted by Player Y -  **HIGH PRIORITY**
    - FR 37 - When you click on a play on the left side, it needs to bring that video clip up.  -  **HIGH PRIORITY**
    - FR 38 - There needs to be an “unedited” tab on the page. If a users clicks this, they will be able to watch the full video without any edits or clips. -  **LOW PRIORITY**
    - FR 39 - There needs to be a filter button at the top. This will allow users to select only certain plays to be shown (such as all 3PM or all Half Court Possessions). -  **HIGH PRIORITY**

    ![Lineups Page](https://github.com/bwoody3142/FullCourtAnalytics/blob/master/AuxiliaryFiles/lineups.jpg)


# Non-Functional Requirements
- Sign Up Page -  **ALL HIGH PRIORITY**
    - NR 1 - Take this information to create a profile
    - NR 2 - Allow users to enter information into text boxes
    - NR 3 - Create user name and password
- Login Page -  **ALL HIGH PRIORITY**
    - NR 4 - Allow teams to securely login to their account
    - NR 5 - There needs to be a “Sign Up” button their will direct them to the sign up page
    - NR 6 - There needs to be a “forgot password” button that will allow them to receive an email to reset their password
- Request Information Page -  **ALL MEDIUM PRIORITY**
    - NR 7 - This needs to allow users to enter their name, school, and email, along with a text box for their questions. These messages should go straight to the company email.
- Stats Information Page -  **ALL LOW PRIORITY**
    - NR 8 - This is a status page that shows all the stats and analytics we keep. The most important part of this page is the visual design
- Uplaod Page -  **ALL HIGH PRIORITY**
    - NR 9 - Before they submit there game film, they should have their rosters appear on the screen. They will need to check a box by each one of the players who started the game. This will help us with substitutions when we code the game. 
- Account Page -  **ALL MEDIUM PRIORITY**
    - NR 10 - Allow users to see their account information
    - NR 11 - Allow users to edit their account information
    - NR 12 - Allow users to add additional logins to the account
    - NR 13 - Allow users to change password
- Resources Page -  **ALL LOW PRIORITY**
    - NR 14 - Allow my admin account to post blog posts
    - NR 15 - Blog posts need to be able to contain RSS links for podcasts
    - NR 16 - Blog posts should be able to contain YouTube videos
    - NR 17 - When the admin publishes a blog post it should be able to be seen by all accounts
- BackEnd Page -  **ALL HIGH PRIORITY**
    - NR 18 - There needs to be the ability to sub in and sub out players via buttons. When a team submits the game film, as mentioned above, they will select who the five starters of the game were. When a substitution happens in the game, there needs to be a button labeled “substitutions” , this will create a substitution line of code. After the button is clicked, all the players on the roster who are not currently in the game should come up. Admins should then be able to either drag and drop players in and out of the game, or check and uncheck buttons to represent who was subbed in and out.
    ![BackEndPage](https://github.com/bwoody3142/FullCourtAnalytics/blob/master/AuxiliaryFiles/BackEndPage.png)
- Team Home Page -  **ALL HIGH PRIORITY**
    - NR 19 - Allow teams to see in a list format all of their games uploaded to the site.
- Stat Center Page -  **ALL HIGH PRIORITY**
    - NR 20- There should be a trends page. This is where teams can select a statistic and see a line graph of the season long trend for that statistic.
- Shot Chart Page
    - NR 21 - Users should be able to see shots charts for the team and every player. -  **HIGH PRIORITY**
    - NR 22 - The right hand side of the screen should have the shot chart. This needs to automatically update every time that a new filter is selected. -  **HIGH PRIORITY**
    - NR 23 - Users MUST be able to select more than one filter at a time.  -  **HIGH PRIORITY**
    - NR 24 - Users should be able to export the shot chart out as an image -  **LOW PRIORITY**
    - NR 25 - The shot chart can either be hexagons like below or just standard “o” for makes and “x” for makes. (Users should be able to choose which one they prefer) -  **MEDIUM PRIORITY**
    - NR 26 - Users must be able to change the shot chart view to sections of the court, like the pictures below. -  **HIGH PRIORITY**
    ![ShotChart](https://github.com/bwoody3142/FullCourtAnalytics/blob/master/AuxiliaryFiles/ShotChart.png)
    ![ShotChart1](https://github.com/bwoody3142/FullCourtAnalytics/blob/master/AuxiliaryFiles/ShotChart1.png)
    ![ShotChart2](https://github.com/bwoody3142/FullCourtAnalytics/blob/master/AuxiliaryFiles/ShotChart2.png)
- Lineup Page -  **ALL HIGH PRIORITY**
    - NR 27 - Every single possesion description will have the five players on the court associated with it. This is so we can provide stats based on different player combinations. 
    - NR 28 - This page needs to display all the five-man lineups that have played for a team during the season. There will need to be the stats shown for each lineup as well. 
- Team Video Playback
    - NR 29 - Allow users to watch their film back -  **HIGH PRIORITY**
    - NR 30 - There needs to be a fast forward and slow rewind buttons for users. -  **HIGH PRIORITY**
    - NR 31 - Once a clip is finished, the video should autoplay the next clip. -  **HIGH PRIORITY**
    - NR 32 - Allow users to share the video via a link -  **MEDIUM PRIORITY**
    - NR 33 - Users can add their own custom tags to the film. -  **LOW PRIORITY**
    - NR 34 - Users can export video clips as MP4 Files (or which format is best) -  **LOW PRIORITY**
    ![Lineups Page](https://github.com/bwoody3142/FullCourtAnalytics/blob/master/AuxiliaryFiles/lineups.jpg)
