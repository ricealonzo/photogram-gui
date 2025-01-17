Rails.application.routes.draw do
get("/users", {:controller =>"users" , :action=>"index"})
get("/users/:url_username", {:controller =>"users", :action =>"show"})

get("/photos", {:controller =>"photos", :action => "index"})
get("/photos/:path", {:controller =>"photos", :action => "show"})

end
