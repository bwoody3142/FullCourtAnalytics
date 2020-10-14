# Domain Model

- Account
    > This class will have account information, like username, email, password, etc.
- Team
    > This class will have coaches, players, a roster, a team schedule.
- Admin
    > This class will have information for an administrator's account and different authorization than the normal user.
- Player
    > This class will have a player's information, statistics, and attributes. 
- Coach
    > This class will have a coach's information. 
- Roster
    > This will just be a list of Players that will be assigned to a Team. 
- Lineup
    > This will contain the starting lineup and the bench for the Team. 
- PlayerStatistics
    > This class will hold all of the Player's stats. 
- TeamStatistics
    > This class will hold all of the Team's stats. 
- StatisticCalculator
    > This class will calculate any statistic given to it. 
- TeamSchedule
    > This class will hold a list of a Team's upcoming games. 
- ShotChart
    > This class will be a visual representation of efficiency for a player or team, from specific areas on the court. 
- StatisticType
    > This class will hold all of the different types of statistic types that FCA provides. 
- StatsFilter
    > This class will hold all of the different types of filter types that FCA provides.
- AnnotatedGame
    > This class will hold game clips, a raw video of a full game, a play-by-play view, etc.
- GameAnnotator
    > This class will be what administrators use to annotate and break down a basketball game clip by clip. 
- VideoUploader
    > This class will manage uploading a video of a game and sending it over to an admin user to be annotated. 