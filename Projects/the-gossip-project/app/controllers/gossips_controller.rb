class GossipsController < ApplicationController
    def index
    end

    def show
        @gossip = Gossip.find(params["id"])
    end

    def new
        @gossip = Gossip.new()
    end

    def create
        @gossip = Gossip.create(title: params[:title], content: params[:content], user: User.find(params[:user]))
        if @gossip.save
            redirect_to(:root, notice: "Gossip successfully created!")
        else
            render '/gossips/new.html.erb'
        end
    end

    def edit
    end

    def update
    end

    def destroy
    end
end
