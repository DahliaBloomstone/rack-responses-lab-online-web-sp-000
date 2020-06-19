class Application

def call(env)
resp = Rack::Response.new

time = Time.now.hour

if time <= 12
  resp.write "Hey Bitch!"
else
  resp.write "Good Afternoon!"
end

resp.finish
end

end


#to see on webpage: rackup config.ru and copy paste IP into browser
#ip: 67.205.182.198:38944
#current time = 6:57pm, so it displays "Good Afternoon!"
