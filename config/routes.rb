Rails.application.routes.draw do

  get("/", { :controller => "items", :action => "index" })

  get("/backdoor", { :controller => "items", :action => "input" })

  post("/insert_item", { :controller => "items", :action => "insert" })

end
