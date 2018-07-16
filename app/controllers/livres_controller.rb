class LivresController < ApplicationController

	before_action :authorize, only: [:new, :create, :edit, :update, :destroy]

	def index
		@livres = Livre.all
		
	end

	def show
		@livre = Livre.find(params[:id])
	end


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
	

	def edit
		@livre = Livre.find(params[:id])
	end

	def update
		@livre = Livre.find(params[:id])
		if @livre.update(livre_params)
			redirect_to @livre
		else
			render 'edit'
		end
		
	end

	def destroy
		@livre = Livre.find(params[:id])
		@livre.destroy
		redirect_to livres_path
	end

	private

  	def livre_params
    	params.require(:livre).permit(:titre, :auteur_id, :categorie_id, :texte)
  	end

end
