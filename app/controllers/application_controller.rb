class ApplicationController < ActionController::Base
    before_action :authenticate_parent!
end

