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
    # render({:templates => ("/photo_templates/create")  })
  end
end
