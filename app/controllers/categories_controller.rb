class CategoriesController < ApplicationController


 before_action :authorize, only: [:new, :create, :edit, :update, :destroy]
 
  def index
  	@categories = Categorie.all
  end

  def new
  	@categorie = Categorie.new
  end

  def create
   @categorie = Categorie.new(categorie_params)
   if @categorie.save
  	redirect_to @categorie
   else
    render 'new'
   end
  end

   def show
   	@categorie=Categorie.find(params[:id])
   	
   end

   def edit
    @categorie=Categorie.find(params[:id])
   end

   def update
   	@categorie = Categorie.find(params[:id])
   if @categorie.update(categorie_params)
  	redirect_to @categorie
   else
    render 'edit'
   end
   end

   	def destroy
     @categorie=Categorie.find(params[:id])
   	 @categorie.destroy 
     redirect_to categories_path
	end
  	

  private 

  def categorie_params
    	params.require(:categorie).permit(:nom)
  end


end
