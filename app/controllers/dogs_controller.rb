class DogsController < ApplicationController

    def index
        @dogs = Dog.all 
        render json: @dogs

    end


    def create
        @dog = Dog.create(
            name: params[:name],
            breed: params[:breed],
            age: params[:age]
        )
        render json: @dog 
    end

    def show
        @dog = Dog.find(params[:id])
        render json: @dog
    end

    def update
        @dog = Dog.find(params[:id])
        @dog.update(
        name: params[:name],
        breed: params[:breed],
        age: params[:age]
    )
    end

    def destroy
        @dog = Dog.find(params[:id])
        @dog.destroy
    end

end
