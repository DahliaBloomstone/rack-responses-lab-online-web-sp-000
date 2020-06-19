class Application

def call(env)
resp = Rack::Response.new

time = Time.now.hour

if time <= 12
  resp.write "Good Morning!"
else
  resp.write "Good Afternoon!"
end

resp.finish
end

end


#to see on webpage: rackup config.ru and copy paste IP into browser
