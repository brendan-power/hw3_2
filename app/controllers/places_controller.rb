class PlacesController < ApplicationController
def index
@places = Place.all
end
def show
    @place = Place.find_by({"id" => params["id"]})
    @posts = Post.where({"place_id" => @place["id"]})
  end
   def new
    @place = Place.new
  #   # render view with new Company form
   end
  def create
  #   # start with a new Company
  @place = Place.new
    puts params["place"]
  #   # assign user-entered form data to Company's columns
    @place["name"] = params["place"] ["name"]
  @place.save
  #   # redirect user
  redirect_to "/places"
   end
end
