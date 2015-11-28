# Young Startups Hackathon 2015

The idea behind this project is to make YoungStartups more efficient / useful to those 
new to the group and for those looking to network in specific areas. The following 
document maps out how I belive this should be done and will hopefully form the basis 
of our Young Startups Hackathon entry.

## The Spec

* Allow new users to sign up for Young Startups. These must be approved by an 
admin at some point down the track. When users are approved:
  1. They get access to the 'YoungStartups directory'.
  2. They are auto-invited to Slack (speak to NickV about getting access to this).
* The Young Startups directory should have a list of members with the following info:
  1. What they're working on at the time.
  2. What they're looking for (be that skills from other users).
  3. Tips / Recommendations to other members in the group. This may or may not take
     the form of an internal / mini blog.
* When a member updates their profile with what they're looking for - it would be 
great if a Slack bot could be created to enable notifications to hit the slack channel.
This works twofold - it encourages / reminds people about the site - but it also 
provides additional value to the slack channel itself (which will most likely always
be the main selling point to Young Startups).


## Design

User Timeline (Dashboard)
![](https://github.com/digitaldawn/youngstartups/blob/master/design/youngstartups-timeline.png)

User Profile (Click on member on timeline to get to it)
![](https://github.com/digitaldawn/youngstartups/blob/master/design/youngstartups-userprofile.png)

## Development

Stefan / Henry are working on this. It would be great if this can take shape in the
form of an API backend and pure JS frontend but not a biggy. 

### Feature / Development Breakdown

* Create / build user authentication / authorization. This includes administrative
users that can accept people into the group. The original questions should really
be followed (the same ones that you need to ask to get into the slack group).
  1. Admins should get an email when someone applys to the group.
  2. "Pending Users" should get an email saying their appliation is being approved.
  3. Important: Ensure passwords are handled correctly / securely. 
* Build User Profiles. 
  1. Once accepted the users should be able to edit their own profiles and view the
     profiles of other people. This should look similar to...
* Build Slack Bot
  1. I've put this prior to the directory because I believe the slack integration 
     will be more instrumenal / the key bit that people will use (as everyone is 
     in slack). It should basically just handle when a user updates or makes a post
     to the directory and copy that contnet across into slack.
* Build "Directory".
  1. The directory should be the homepage if a user is signed in. It should be similar
     in concept to a Facebook Timeline and update as and when people update their profiles.
  2. This should have a "Post" component & comments for those posts 
  3. When a user updates their profile for what they're looking for, this should also be 
     treated somewhat like a post (in that it'll show up in the timeline - despite the fact
     its not a post from a technical standpoint)
