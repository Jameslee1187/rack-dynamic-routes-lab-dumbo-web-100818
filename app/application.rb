 class Application
   @@items = [Item.new("Apples",5.23), Item.new("Oranges",2.43)]
 def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
      
      
      
      
      
      
      resp.finish
  end

end