 class Application
   @@items = [Item.new("Apples",5.23), Item.new("Oranges",2.43)]
 def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if req.path.match(/items/)
      items_list = req.path.split("/items/").last
      song = @@items.find{|s| s.item == items_list}
 
      resp.write item.artist
    end
      
      
      
      
      
      
      resp.finish
  end

end