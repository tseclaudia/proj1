# Q0: Why is this error being thrown?
The Pokemon controller (pokemons_controller.rb) and model (pokemon.rb) hadn't been created/initialized yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The random Pokemon are being generated from db/seeds.rb. The seed file contains default data such as the random Pokemon that appears and the trainers Ash, Gary, Misty, and Brock. You can then populate the database with the default data in db/seeds.rb using the command 'rake db:seed'. All of the possible Pokemon that appear can be found in our seeds.rb file.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It generates a form containing a button with the name "Throw a Pokeball!" When that button is clicked, that form is submitted to the URL capture_path(id: @pokemon), i.e. the capture method in pokemons_controller is called using the patch method. 


# Question 3: What would you name your own Pokemon?
I'd name my Pokemon Clauds9.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed ':controller => 'trainers', :action => 'show', :id => @pokemon.trainer_id' into redirect_to. It is not a path, but the URL/path that the brower redirects to can be generated using the parameter 'option' in redirect_to. The parameters I passed in specifiy which controller the method 'show' is in and which trainer's profile to redirect to.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
The layout in the file views/layouts/application.html.erb is the default of rendering any page, so the error message that is rendered at the very end of application.html.erb is included in every page. In pokemons_controller, we're using the flash message that was rendered in application.html.erb and defined in _messages.html.erb.

https://github.com/tseclaudia/proj1

# Give us feedback on the project and decal below!
The project was interesting but I kept running into bugs! So sad. :(

# Extra credit: Link your Heroku deployed app
https://aqueous-sea-25465.herokuapp.com/
