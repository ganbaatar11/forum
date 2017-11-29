# forum
mini forum like StackOverFlow

# Get started
configure database with MySql and the run:

rake db:migrate
rake db:seed

# User
email: test0@test.com, password: password: password

If you want no routeing errors:
Remove the comment in config/routes.rb: 
"# get '*unmatched_route', to: 'application#raise_not_found'"
