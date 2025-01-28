class PhotosController <ApplicationController
  def index
  @list_of_photos = Photo.all.order({:created_at => :desc})
    render({:template => "photo_templates/index"}) 
  end 
  def show
    url_id = params.fetch("path")
    matching_id = Photo.where({:id => url_id})
    @photo_detail= matching_id.at(0)
    render({:template => "/photo_templates/show"})
  end
  def destroy

    the_id = params.fetch("path")
    matching_id = Photo.where({:id => the_id}).at(0)
    matching_id.destroy
    # render({:template => "photo_templates/destroy"})
    redirect_to("/photos")
  end
  def create
    input_image = params.fetch("input_image")
    input_caption = params.fetch("input_caption")
    input_owner_id = params.fetch("input_owner_id")
    a_new_photo = Photo.new

    a_new_photo.image =input_image
    a_new_photo.caption = input_caption
    a_new_photo.owner_id = input_owner_id

   

    a_new_photo.save
   redirect_to("/photos/#{a_new_photo.id}")
    # render({:template => ("/photo_templates/create")  })
  end
  def update
    
    url_edit_id = params.fetch("edit_id")
    the_photo = Photo.where({:id => url_edit_id}).at(0)
    
    url_edit_image = params.fetch("input_image")
    url_edit_caption = params.fetch("input_caption")
    
    the_photo.image = url_edit_image   
    the_photo.caption = url_edit_caption
    
    the_photo.save
    redirect_to("/photos/#{the_photo.id}") 
    #render({:template => ("/photo_templates/update")})
  end
  def comment
    
      input_photo_id = params.fetch("input_photo_id")
      input_author_id = params.fetch("input_author_id")
      input_comment = params.fetch("input_comment")
      
      a_new_comment = Comment.new
      a_new_comment.photo_id =input_photo_id 
      a_new_comment.author_id = input_author_id
      a_new_comment.body = input_comment
  
     
  
      a_new_comment.save
     redirect_to("/photos/#{a_new_comment.photo_id}")
      # render({:template => ("/photo_templates/create")  })
  
    #render({:template => ("/photo_templates/comment")})
  end
end
