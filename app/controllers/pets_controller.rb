class PetsController < ApplicationController
    def new
        @pet = Animal.new
    end
    
    def edit
        @pet = Animal.find(params[:id])
    end

    def create
        @pet = Animal.new(pet_params)

        if @pet.save
            redirect_to @pet
        else
            render 'new'
        end
    end

    def update
        @pet = Animal.find(params[:id])

        if @pet.update(pet_params)
            redirect_to @pet
        else
            render 'edit'
        end
    end

    def destroy
        @pet = Animal.find(params[:id])
        @pet.destroy

        redirect_to pets_path
    end

    def index
        @pets = Animal.all
    end

    def show
        @pet = Animal.find(params[:id])
    end

    private

    def pet_params
        params.require(:animal).permit(:name, :espece, :sexe, :age, :desc)
    end

end

