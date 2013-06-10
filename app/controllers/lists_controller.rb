class ListsController < ApplicationController

    def index
      @lists = List.all
    end

    def new
      @list = List.new
    end

    def create
      @list = List.create( params[:list] )
      flash[:notice] = "List added"
      redirect_to :root
    end

    # def destroy
    #   @list = List.find(params[:list])
    #   @list = List.destroy
    # end

end
