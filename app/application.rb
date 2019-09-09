class Application 
  
  @@items = []
  
  def call(env)
    resp = Rack::Response.new 
    req = Rack::Request.new(env)
    
    if req.path.match(/items/)
<<<<<<< HEAD
        item_req = req.path.split("/items/").last
        if @@items.find {|s| s.name == item_req}
        resp.write @@items.find {|s| s.name == item_req}.price
        else 
          resp.write "Item not found"
          resp.status = 400
        end
=======
      item_req = req.path.split("/items/").last
      item = @@items.find {|s| s.title == item_req}
      resp.write item.price
    elsif  @@items.empty?
      resp.write "Route not found"
      resp.status = 400
>>>>>>> 6a3cd95a3240c69537ae414f86136a86e8eb8537
    else
      resp.write "Route not found"
      resp.status = 404
    end
<<<<<<< HEAD
=======
    
>>>>>>> 6a3cd95a3240c69537ae414f86136a86e8eb8537
    resp.finish  
  end 
end 