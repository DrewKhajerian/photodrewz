class PicturesController < ApplicationController

	def index
		@pictures = Picture.all
	end

  def show
    @picture = Picture.find(params[:id])
  end

  def new
  end

  def create
  	# creates a new picture instance through the new form
  	@picture = Picture.new(params[:picture])
		
		if @picture.save
	    # if the save for the picture was successful, go to index.html.erb
	    redirect_to pictures_url
  	else
	    # otherwise render the view associated with the action :new (i.e. new.html.erb)
	    render :new
  	end

  end

end