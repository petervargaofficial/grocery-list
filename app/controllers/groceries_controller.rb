class GroceriesController < ApplicationController
	def index
		@groceries = Grocery.all
	end

	def show
		@grocery = Grocery.find(params[:id])
	end
	
	def new
		@grocery = Grocery.new
	end

	def create
		@grocery = Grocery.create groceries_params
		redirect_to grocery_path(@grocery)
	end

	def edit
		@grocery = Grocery.find(params[:id])
	end

	def update
		@grocery = Grocery.find(params[:id])
    	@grocery.update groceries_params
    	redirect_to grocery_path(@grocery)
	end

	def destroy
		Grocery.find(params[:id]).destroy
		redirect_to root_path
	end	

	private

	def groceries_params
		params.require(:grocery).permit(:item, :quantity, :price, :description)
	end

end
