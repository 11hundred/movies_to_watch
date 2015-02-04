class ActorsController < ApplicationController
  def edit_form
    @actor = Actor.find_by({ :id => params["id"] })
  end

  def update_row
    @actor = Actor.find_by({ :id => params["id"] })


    @actor.name = params["name"]
    @actor.bio = params["bio"]
    @actor.dob = params["dob"]
    @actor.image_url = params["image_url"]

    @actor.save
  end

  def create_row
    @actor = Actor.new

    @actor.name = params["name"]
    @actor.bio = params["bio"]
    @actor.dob = params["dob"]
    @actor.image_url = params["image_url"]

    @actor.save
  end

  def new_form

  end

  def index
    @actors = Actor.all
  end

  def show
    @actor = Actor.find_by({ :id => params["id"] })
  end

  def destroy
    @actor = Actor.find_by({ :id => params["id"] })

    @actor.destroy
  end

end
