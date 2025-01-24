Rails.application.routes.draw do
  #Create a User 
  post("/insert_photo" , {:controller => "users", :action => "create"})
  #Read All Users
  get("/users", {:controller =>"users" , :action=>"index"})
  #Read a User
  get("/users/:url_username", {:controller =>"users", :action =>"show"})


  #Create a Photo 
  post("/insert_photo" , {:controller => "photos", :action => "create"})
  #Read All Photos
  get("/photos", {:controller =>"photos", :action => "index"})
  #Read a Photo
  get("/photos/:path", {:controller =>"photos", :action => "show"})

#Update A Photo 
get("/update_photo/:photo_path" , {:controller =>"photos", :action => "update"})

#Delete/Destroy a Phot
get("/delete_photo/:path" , {:controller =>"photos", :action => "destroy"})
end
