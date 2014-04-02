#http://www.sinatrarb.com/intro.html

require 'sinatra'

class Contact
  def intialize(name)
    @name = name
  end
end

@ontacts = []

get "/" do #called a route to get different end points, routes to a method
  puts params
  erb :index
end


puts "/contacts" do
  puts params
  new_contact = Contact.new(params(:first_name))
  @contact << new_contact
  redirect to ['julie']
end

get "/:name" do
 puts params
 @name = params[:name].capitalize
 "Hello #{name}!"
 erb:name_page
 end

 get "/contacts" do
  erb :contacts
end
