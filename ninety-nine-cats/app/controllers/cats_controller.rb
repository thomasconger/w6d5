class CatsController < ApplicationController

    def index
        @cats = Cat.all
        render :index
    end

    def show
        cat = Cat.find_by(id: params[:id])
        if cat
            render json: cat
        else
            render plain: 'Cat not Found!!'
        end
    end

    def create
        cat = Cat.new(cat_params)

        if cat && cat.save
            render json: cat
        else
            render plain: "Couldn't create it"
        end

    end

    def new

    end



    def edit

    end

    def update
        cat = Cat.find_by(id: params[:id])
        if cat && cat.update(cat_params)
            render json: cat
        else
            render plain: "Can't update cat"
        end
    end

    private
    def cat_params
        params.require(:cat).permit(:name, :color, :birth_date, :sex, :description)
    end

end
