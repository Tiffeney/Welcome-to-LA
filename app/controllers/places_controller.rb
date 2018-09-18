class PlacesController < ApplicationController
    before_action :set_place, only: [:show, :edit, :update, :destroy]
    before_action :authorize, except: [:index, :show]

    def index
        @places = Place.all
    end

      def show
        @place = Place.find params[:id]
    end

    def new
            @place = Place.new
    end

    def create
        @new_place = @current_user.places.new(place_params)

       if @new_place.save
        redirect_to place_path(@new_place)
       else
        redirect_to 'new'
        end

    end

    def edit
            @place = Place.find params[:id]
    end

    def update
            @place = Place.find params[:id]
    
            if @place.update(place_params)
                redirect_to place_path(@place)
            else
                render "edit"
            end
    end
    
        # def destroy
        #     @place = Place.find params[:id]
        #     @place.destroy
        #     redirect_to root_path
        # end
    
        private

        def set_place
            @place = Place.find(params[:id])
        end
            def place_params
                params.require(:place).permit(:name, :address, :good_for, :comment)
            end
    end