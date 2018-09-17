class PlacesController < ApplicationController
    # before_action :set_place, only: [:show, :edit, :update, :destroy]
    # before_action :authorize, except: [:index, :show]

    def index
        @places = Place.all
      end

    def show
        @place = Place.find params[:id]
    end

end