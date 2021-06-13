# My Bucket List Sinatra Web Application
In this web application, the user can see all the bucket lists already created but not able to edit or delete a list that doesn't belong to her/him.
To create a list, the user must be logged in.

To sign up, the user needs to fill up a name, unique email address, and password.
To log in, the user needs to fill up the correct email address and password.
In both cases, an error message will show up with any field is left blank, if the user tries to create an account with an existing email address, or if the email address/password doesn't match during the log in.

After logged in, the user can create a new bucket list, can edit and delete a list that belongs to her/him, and can view all the lists that she/he created. A log out button option will also be available on the navigation bar.

**About The User**

*Who is the User?*\
Everyone who has any type of life goals. It can be places that the user wants to visit before she/he dies or accomplishments to achieve before a certain age.

*What is their pain point?*\
If the user don't put the goals in a list, it's easier to forget about it and harder to keep track and see the small progress that the user is doing to achieve it.

*How do they use our solution to overcome this problem?*\
This web application helps the user to keep track and remind their goals.

**About The APP**

*What this web application does? What is the user experience?*\
In the home page, the user will see a clickable images with descriptions that might be her/his goal. If the user clicks on it, it'll redirects to a specific list that has that goal inside.
The user can also see all the existing lists to get some inspiration.
After logged in, the user can create a new list, edit, or delete her/his list.

**Flow Diagram**\
*Models*\
This application has 2 models: list and user

*Relationship*\
A list belongs to a user and a user has many lists

*Attributes*\
A list has a name, a description, an image url, a to do list, and an user id
A user has a name, email address, and password

Flow diagram [here](https://drive.google.com/file/d/1ZTPE_YMM91jfNekATL3RIntcUvOFBTA8/view?usp=sharing)
## Instalation
Fork and clone this repo.

Install all the gems with:
```
    $ bundle install
```

Execute the databse:
```
    rake db:migrate
```

And then populate the database:
```
    rake db:seed
```
## Usage

To run use `shotgun`

and go to you [local web server](http://127.0.0.1:9393/)
## Contributing

This project is intended to be a safe and welcoming space for collaboration.
Bug reports and pull requests are welcome on GitHub at [Luciana GitHub Profile](https://github.com/luciana-lab).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the My Bucket List project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/luciana-lab/my-bucket-list/blob/master/CODE_OF_CONDUCT.md).

## Extras
Project Walkthrough Video [here](https://youtu.be/_Bb-MrKRYVg)\
Blog Post [here](https://luciana-lab.medium.com/displaying-error-messages-in-sinatra-step-by-step-34b080793266)\
Heroku link [here](https://my-bucket-list-sinatra-project.herokuapp.com/)\
30 minutes video coding [here](https://youtu.be/YtXW9zKNDGU)\
GitHub 1st Repo [here](https://github.com/luciana-lab/my-bucket-list)