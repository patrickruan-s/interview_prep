class NbaRostersController < ApplicationController
    def index
        @nba_rosters = NbaRoster.all
    end

    def new
    end

    def create
    end
end