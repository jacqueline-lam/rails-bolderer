#Requirements

[] Use the Ruby on Rails framework.

Your models must:

[] • Include at least one has_many, at least one belongs_to, and at least two has_many :through relationships

[] • Include a many-to-many relationship implemented with has_many :through associations. The join table must include a user-submittable attribute — that is to say, some attribute other than its foreign keys that can be submitted by the app's user

[] Your models must include reasonable validations for the simple attributes. You don't need to add every possible validation or duplicates, such as presence and a minimum length, but the models should defend against invalid data.

[] You must include at least one class level ActiveRecord scope method. a. Your scope method must be chainable, meaning that you must use ActiveRecord Query methods within it (such as .where and .order) rather than native ruby methods (such as #find_all or #sort).

p[ Your application must provide standard user authentication, including signup, login, logout, and passwords.

[] Your authentication system must also allow login from some other service. Facebook, Twitter, Foursquare, Github, etc...

[] You must include and make use of a nested resource with the appropriate RESTful URLs.

[] • You must include a nested new route with form that relates to the parent resource

[] • You must include a nested index or show route

[] Your forms should correctly display validation errors.

[] a. Your fields should be enclosed within a fields_with_errors class

[] b. Error messages describing the validation failures must be present within the view.

[] Your application must be, within reason, a DRY (Do-Not-Repeat-Yourself) rails app.

[] • Logic present in your controllers should be encapsulated as methods in your models.

[] • Your views should use helper methods and partials when appropriate.

[] • Follow patterns in the Rails Style Guide and the Ruby Style Guide.

[X] Do not use scaffolding to build your project. Your goal here is to learn. Scaffold is a way to get up and running quickly, but learning a lot is not one of the benefits of scaffolding.

# Feature requests
* Scope method: filter Problem by problem.grade, style.name, problem.date (problems_sent_this_month)
* Model method: return rating of a Cafe based on average rating associated Reviews 
* View helper method: convert location zip code from "Address string" into "Google-Maps-code" -> encapsulating logic out of views
* Helper method: 

* Nested resources: 
** users/:id/rewards (all rewards available) and users/:id/rewards/new (admin to create new reward options to user)
** user/:id/problems ('problems#index')
** user/:id/problems/new ('problems#new')
** users/:id/problems/:id/comments/new ('comments#new')


# To do:

## Users
### controller
* index (all users)
* new
* create
* show -> show problems, rewards
** if you are owner of problem, you can see <%= link_to 'Edit problem', 'problems#edit' %>
** if you are other users, you can see <%= link_to 'Write a comment', 'comments#new' %>
### routes
get '/users', to: 'users#index' 
get '/users/new', to: 'users#new'
get '/users/show', to: 'users#show' #=> would show number of sends and points, link_to "see all their problems", /users/:id/problems


## Problems
### controller
* index (by everyone)
* new
* show
* create
* edit
* update
* destroy
### routes
get '/users/:id/problems', to: 'problems#index'
post '/users/:id/problems/:id', to: 'problems#show' 
get '/users/:id/problems/new', to: 'problems#new' 
post '/users/:id/problems', to: 'problems#create' 
get '/users/:id/problems/:id/edit', to: 'problems#edit' 
patch '/users/:id/problems/:id', to: 'problems#update' 
delete '/users/:id/problems/:id', to: 'problems#destroy' 


## Styles
### controller
* new
* create
### routes
n/a

## ProblemStyles
### controller
* new
* create
### routes
n/a (part of problems?)


## Comments
### controller
* new
* create
* edit
* update
* destroy
### routes
get '/users/:id/problems/:id/comments/new', to: 'comments#new' 
post '/users/:id/problems/:id/comments', to: 'comments#create' 
get '/users/:id/problems/:id/comments/:id/edit', to: 'comments#edit' 
patch '/users/:id/problems/:id/comments/:id', to: 'comments#update' 
delete '/users/:id/problems/:id/comments/:id', to: 'comments#destroy' 

## Rewards
### Controller
* index
* show
* new
* create
### model
### routes 
* get '/users/:id/rewards', to: 'rewards#index' -> all rewards available for the month + previously redemmed rewards
* get '/users/:id/rewards/:id', to: 'rewards#show' #=> details of one reward, points needed, user's current points, link_to "Redeem reward", rewards#update? (mark as redeemed/ no longer available)
* get '/users/:id/rewards/new', to: 'rewards#new' #=> only available to admin?
* post '/users/:id/rewards', to: 'rewards#create' #=> only available to admin?
### views
* index
* new
* show