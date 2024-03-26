class ApplicationController < ActionController::Base
    def after_sign_in_path_for(resource)
        nba_rosters_path
    end
end
