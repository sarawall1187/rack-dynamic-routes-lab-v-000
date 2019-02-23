require 'pry'
class Application 
  @@items = [Item.new("Figs",3.42), Item.new("Pears", 0.99)]
  def call(env) 
    resp = Rack::Response.new 
    req = Rack::Request.new(env)
   
      if req.path=="/items"
        
      resp.write item_check
    else
      resp.write "Route not found"
      resp.status = 404
    end
    resp.finish
  end
  
  def item_check
    @@items.each do |item|
      if @@items.include?(item)
      resp.write "#{item.name}\n#{item.price}"
    end
    end
  end
end