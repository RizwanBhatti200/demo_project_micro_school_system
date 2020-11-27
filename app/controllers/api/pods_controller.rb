module Api
  

  class PodsController < ApplicationController
    skip_before_action :authenticate_parent!
    http_basic_authenticate_with name:"admin",password: "123456"
   


    def index
      @pods = Pod.all
      render json: @pods
    end

  end

end