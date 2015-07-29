class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @show_photo_source = Photo.find_by({ :id => params["id"]}).source
    @show_photo_caption = Photo.find_by({ :id => params["id"]}).caption
    render("show.html.erb")
  end

  def destroy
    delete_photo = Photo.find_by({ :id => params["id"]})
    delete_photo.destroy
    render("destroy.html.erb")
  end

  def new_form
    render("new_form.html.erb")
  end

  def create_photo
    @the_caption = params["the_caption"]
    @the_source = params["the_source"]
    render("create_photo.html.erb")
  end

end
