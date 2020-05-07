class WelcomeController < ApplicationController
    def show
        @first_name = params["first_name"]
        @list_gossips = Gossip.first(20)
        @list_gossips.each do |gossip|
            puts gossip.id
            puts gossip.title
            puts gossip.user.first_name
        end
    end
end
