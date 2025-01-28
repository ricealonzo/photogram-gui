Rails.application.routes.draw do
  #Create a User 
  post("/add_user" , {:controller => "users", :action => "create"})
  #Read All Users
  get("/users", {:controller =>"users" , :action=>"index"})
  #Update/edit a User 
  post("/update_user/:edit_id" , {:controller => "users", :action => "update"})
  #Read a User
  get("/users/:url_username", {:controller =>"users", :action =>"show"})


  #Create a Photo 
  post("/insert_photo" , {:controller => "photos", :action => "create"})
  #Read All Photos
  get("/photos", {:controller =>"photos", :action => "index"})
  #Read a Photo
  get("/photos/:path", {:controller =>"photos", :action => "show"})
  
  #Update A Photo 
  post("/update_photo/:edit_id" , {:controller =>"photos", :action => "update"})
  
  #Delete/Destroy a Phot
  get("/delete_photo/:path" , {:controller =>"photos", :action => "destroy"})
  #Create a comment 
  post("/add_comment" , {:controller => "photos", :action => "comment"})
end
