# Focus Poll

As an admin you can create unlimited polls with unlimited answers. But only the top poll on the list will be visible to users to have all their attention on the current poll. The idea is that usually Focus Poll would be used for important and serious questions and be a way to easily gather an overview of their users/clients opinions etc.
Once the admin is satisfied with the amount of data gathered, which is displayed on a table and two different graphs, that poll can be removed and the next poll in line will move to the top place, such being the new one displayed to the users/clients.

Overview:

* As an admin you can plan ahead and create polls that should be displayed in the future.

* Each user gets to vote only once per poll.

* Admins are unable to vote.

* Only admins can see the graphs and votes counter.

* I on purpose did not set any checks to see if an email is fake or not to simplify the handling of this mock app.

How to run the app:

* Visit: https://focus-poll.herokuapp.com/

* To log in as the admin use admin@admin.com / password: 112233

* To sign up as a normal user create any imaginary email you please, such as yourname@email.com


What I learned:

During this build I learned that I need to work on planning out my strategy more efficiently. I switched direction on major points of the app a couple of times during the build and had to adjust accordingly every single time. Such as finding a way around the fact that the gem Acts-As-Votable was not the best choice for this occasion. It was the first time I ever used the gem as well and I misjudged the capabilities of it that were not suited for my project. The realization came too late though and I worked around it since I had a deadline that was just around the corner.
