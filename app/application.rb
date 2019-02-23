class Application 
  @@items = [Item.new("Figs",3.42), Item.new("Pears", 0.99)]
  def call 
    resp = Rack::Response.new 
    req = Rack::Request.new(env)
      if req.path=="/items"
      # resp.write "You requested the songs"
    else
      resp.write "Route not found"
      resp.status = 404
    end
    resp.finish
  end
end