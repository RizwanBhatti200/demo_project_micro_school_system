class ReviewsController < ApplicationController
before_action :find_review, only: [:edit,:show, :update, :destory]
    

 def new
    @review = current_parent.reviews.new
 end
 def show; end
 

 def create
    @review = current_parent.reviews.new(review_params)
    respond_to do |format|
        if @review.save
            format.js
        else
            format.js
        end
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
        params.require(:review).permit(:rating , :reviewable_id, :reviewable_type)
    end

    def find_review
        @review = Review.find(params[:id])
    end
 
end
