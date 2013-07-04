class PicturesController < ApplicationController

	def index
		@pictures = Picture.all
	end

  def show
    @picture = Picture.find(params[:id])
    @show_view = true
  end

  def new
    @picture = Picture.new
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

  	def edit
  		@picture = Picture.find(params[:id])
  	end

  	def update
  		@picture = Picture.find(params[:id])

  		if @picture.update_attributes(params[:picture])
  			redirect_to "/pictures/#{@picture.id}"
  		else
  			render :edit
  		end
  	end

  	def delete
  		@picture = Picture.find(params[:id])
  		@picture.destroy
  		redirect_to pictures_url
  	end

  end

end