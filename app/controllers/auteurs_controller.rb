class AuteursController < ApplicationController

    def index
		@auteurs = Auteur.all	
	end

	def show
		@auteur = Auteur.find(params[:id])
	end


	def new
		@auteur=Auteur.new	
	end

	def create
		@auteur=Auteur.new(auteur_params)
		if @auteur.save
			redirect_to @auteur
		else
			render 'new'
		end
	end

	def edit
		@auteur = Auteur.find(params[:id])
	end

	def update
		@auteur = Auteur.find(params[:id])
		if @auteur.update(auteur_params)
			redirect_to @auteur
		else
			render 'edit'
		end
		
	end

	def destroy
		@auteur = Auteur.find(params[:id])
		@auteur.destroy
		redirect_to auteurs_path
	end

	private

  	def auteur_params
    	params.require(:auteur).permit(:nom, :bio)
  	end



end
