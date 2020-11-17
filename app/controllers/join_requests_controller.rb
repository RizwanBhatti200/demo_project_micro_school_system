class JoinRequestsController < ApplicationController
  def create
    join_request = JoinRequest.multi_create(params)
  end


  private

  def join_request_params
    params.require(:join_request).permit(:pod_id,:student_id)
  end
end

