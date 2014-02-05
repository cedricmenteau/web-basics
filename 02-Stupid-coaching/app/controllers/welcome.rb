#require 'pry'

get '/' do
  @coach_message = params[:coach_message] || "what do you want kid ?"
  # Look in app/views/index.erb
  
  puts "self : #{self}"
  puts "self class: #{self.class}"
  puts "self instance variables from GET '/' route handler: #{self.instance_variables}"
  erb :index
end

post '/coach' do
	#binding.pry
	answer = params[:what]
   	if answer.end_with?("?")
     @coach_message = params[:coach_message] || "What's wrong with you kid?"
   	else 
   	@coach_message = params[:coach_message] || "I don't care son, get dressed and go to work !" 
  end
end