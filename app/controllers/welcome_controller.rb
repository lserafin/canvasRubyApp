class WelcomeController < ApplicationController
	def index
		@items = CanvasItem.all
  	end

  	def add
  		@item = CanvasItem.new(:title => params[:title])
  		if @item.save
  			flash[:success] = "Item created!"
  			redirect_to root_path
  		end
  	end

  	def clear
  		CanvasItem.delete_all
  		redirect_to root_path
  	end
end
