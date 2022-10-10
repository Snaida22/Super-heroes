class HeroPowersController < ApplicationController

    def index
        heroes = Hero.all
        render json: heroes , only:[:id, :name, :super_name]
    end

end
