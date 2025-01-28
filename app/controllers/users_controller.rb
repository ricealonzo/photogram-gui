class UsersController < ApplicationController
  def index
  
   @list_of_users = User.all.order({:username => :asc})
    render({:template => "user_templates/index"}) 
  end
   def show
    url_username = params.fetch("url_username")
    @one_user = User.where({:username => url_username}).at(0)
      render({:template=> "user_templates/show"})
   end
   def create
    
    input_username = params.fetch("input_username")
   
    a_new_user = User.new
   
    a_new_user.username =input_username 
  

   

    a_new_user.save
   redirect_to("/users/#{a_new_user.username}")
end
   def update
    
    url_edit_id = params.fetch("edit_id")
   
    update_user = User.where({:id => url_edit_id}).at(0) 
    updated_user = params.fetch("input_username")
    update_user.username = updated_user
  

   

    update_user.save
   redirect_to("/users/#{update_user.username}")
end
end
