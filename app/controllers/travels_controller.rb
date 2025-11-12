class TravelsController < ApplicationController
    def index
    end

    def new
        @travel = Travel.new
    end

    def show
        @travel = Travel.find_by(id: params[:id])
    end

    def create
        travel = Travel.new(travel_params)
        if travel.save
            flash[:notice] = "診断が完了しました"
            redirect_to travel_path(travel.id)
        else
            redirect_to :action => "new"
        end
    end
  
  private
    def travel_params
        params.require(:travel).permit(:question1, :question2, :question3, :question4)
    end
end
