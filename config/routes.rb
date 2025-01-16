Rails.application.routes.draw do
get("/users", {:controller =>"users" , :action=>"index"})
get("/users/:url_username", {:controller =>"users", :action =>"show"})

end
