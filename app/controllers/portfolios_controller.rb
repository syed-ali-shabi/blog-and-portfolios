class PortfoliosController < ApplicationController
layout 'portfolio'
access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all
	def index
		@portfolio_items = Portfolio.by_position
	end
	def new
		@portfolio_item = Portfolio.new
	end
	def create
		@portfolio_item = Portfolio.new(portfolio_params)
		if @portfolio_item.save
			redirect_to portfolios_url(@portfolio), notice: "portfolio was successfully created." 
		else
			render :new
			@portfolio_item.errors.full_messages
		end
	end
	def show
		@portfolio_item = Portfolio.find(params[:id])
		
	end
	def edit
		@portfolio_item = Portfolio.find(params[:id])
		
	end
	def update
		@portfolio_item = Portfolio.find(params[:id])
		@portfolio_item.update(portfolio_params)
		redirect_to '/portfolios'
	end
	def destroy
		@portfolio_item = Portfolio.find(params[:id])
		@portfolio_item.delete
		redirect_to '/portfolios'
	end

	private
	def portfolio_params
		params.require(:portfolio).permit(:title, :subtitle, :body, technologies_attributes: [:id, :name, :_destroy] )
	end
end
