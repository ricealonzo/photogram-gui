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
end
