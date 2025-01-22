Rails.application.routes.draw do
get("/users", {:controller =>"users" , :action=>"index"})
get("/users/:url_username", {:controller =>"users", :action =>"show"})

get("/photos", {:controller =>"photos", :action => "index"})
get("/photos/:path", {:controller =>"photos", :action => "show"})
post("/delete_photo/:path" , {:controller =>"photos", :action => "destroy"})
post("/insert_photo" , {:controller => "photos", :action => "create"})
post("/update_photo" , {:controller => "photos", :action => "update"})



# post("/delete_photo/:path" , {:controller => photos, :action => "update"})
end
