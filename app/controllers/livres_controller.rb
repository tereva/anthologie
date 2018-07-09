class LivresController < ApplicationController

	def new	
		@livre = Livre.new
	end

	def create
		#render plain: params[:livre].inspect
		@livre = Livre.new(livre_params)
		if @livre.save
			redirect_to @livre
		else
			render 'new'
		end
	end

	def show
		@livre = Livre.find(params[:id])
	end

	def index
		@livres = Livre.all
		
	end

	private

  	def livre_params
    	params.require(:livre).permit(:titre, :auteur, :categorie, :texte)
  	end

end
