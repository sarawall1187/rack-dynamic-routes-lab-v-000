require 'pry'
class Application 
  
  @@items = [Item.new("Figs",3.42), Item.new("Pears", 0.99)]
  
  def call(env) 
    resp = Rack::Response.new 
    req = Rack::Request.new(env)
    # binding.pry
     item_checked = req.path.split("/").last
      if req.path== "/items/#{item_checked}"
       resp.write item_check(item_checked)
    else
      resp.write "Route not found"
      resp.status = 404
    end
     resp.finish
  end
  
  def item_check(item_checked)
     if @@items.include?(item_checked)
       "#{item.price}"
     else
       "Item not found."
     end
    end
  end
  
end