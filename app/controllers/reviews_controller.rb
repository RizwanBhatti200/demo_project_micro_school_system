class ReviewsController < ApplicationController
before_action :find_pod
before_action :find_review, only: [:edit, :update, :destory]
    

 def new
     @review = Review.new
 end

 def create
     @review = Review.new(review_params)
     @review.pod_id = @pod.id
     @review.parent_id = current_parent.id

     if @review.save
        redirect_to pod_path(@pod)
    else
        render :new
    end
 end

 def edit;end
 def update
     @review = Review.find(params[:id])
     if @review.update(review_params)
       flash[:success] = "Review was successfully updated"
       redirect_to pod_path(@pod)
     else
       flash[:error] = "Something went wrong"
       render :edit
     end
 end
 def destroy
     @review = Review.find(params[:id])
     if @review.destroy
         flash[:success] = 'Review was successfully deleted.'
         redirect_to pod_path(@pod)
     else
         flash[:error] = 'Something went wrong'
         redirect_to pod_path(@pod)
     end
 end
 
 
 
 
 private
    def review_params
        params.require(:review).permit(:rating, :comment)
    end

    def find_pod
        @pod = Pod.find(params[:pod_id])
    end
    
    def find_review
        @review = Review.find(params[:id])
    end
 
end
