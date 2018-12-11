## Objective

* Create a full-stack application to keep track of all the meals a user has eaten

[Back-end repo](https://github.com/Tommyle90/full-stack-back-end-client)
[Front-end repo](https://github.com/Tommyle90/full-stack-front-end-client)
[Meal Tracker Application](https://tommyle90.github.io/full-stack-front-end-client/)

## Technologies Used

* Ruby
* Ruby on Rails
* PostgreSQL
* Heroku
* Javescript


## Thought Process & Steps

* Setup proper repos using templates and deploy both front-end(GitHub) and back-end(Heroku).
* Built and test user authentication on the back-end
* Built a table of Meals with columns of mealtype, date, and description
* Made validations so that only the current user can see their information.
* Made it so that the user can only input certain criteria in the mealtype form


## ERD (entity relationship diagram)

![ERD Image](https://i.imgur.com/cfPhSFa.jpg)


## Future Implementations

Down the line I would have a Food table that connects to the meal
Food that has these columns
* calories
* fats
* carbs
* proteins
* meal_id
