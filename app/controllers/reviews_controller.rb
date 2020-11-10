class ReviewsController < ApplicationController
before_action :find_pod
    

 def new
     @review = Review.new
 end

 def create
     @object = Review.new(review_params)
     @review.pod_id = @pod.id
     @review.parent_id = current_parent.id

     if @review.save
        redirect_to pod_path(@pod)
    else
        render 'new'
    end
 end
 
 private
    def review_params
        params.require(:review).permit(:rating, :comment)
    end

    def find_pod
        @pod = Pod.find(params[:pod_id])
    end
 
end
