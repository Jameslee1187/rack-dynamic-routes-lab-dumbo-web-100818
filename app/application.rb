 class Application
   @@items = [Item.new("Apples",5.23), Item.new("Oranges",2.43)]
 def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    if req.path.match(/items/)
 
      items_list = req.path.split("/items/").last #turn /songs/Sorry into Sorry
      song = @@songs.find{|s| s.title == song_title}
 
      resp.write song.artist
    end
      
      
      
      
      
      
      resp.finish
  end

end