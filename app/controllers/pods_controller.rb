class PodsController < ApplicationController

  before_action :set_pod, only: [:show, :edit, :update, :destroy]
  
  def index  
    @pods = params[:search].present? ? Pod.where(['zipcode LIKE ? ', "%#{params[:search]}%"]) : Pod.all
  end

  def show
  end

  def new
    @pod = current_parent.pods.new
    @pod.build_image
  end

  def edit
    @pod.build_image if @pod.image.blank?
  end
  
  def create
    @pod = current_parent.pods.new(pod_params)

    respond_to do |format|
      if @pod.save
        format.html { redirect_to @pod, notice: 'Pod was successfully created.' }
        format.json { render :show, status: :created, location: @pod }
      else
        format.html { render :new }
        format.json { render json: @pod.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @pod.update(pod_params)
        format.html { redirect_to @pod, notice: 'Pod was successfully updated.' }
        format.json { render :show, status: :ok, location: @pod }
      else
        format.html { render :edit }
        format.json { render json: @pod.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @pod.destroy
    respond_to do |format|
      format.html { redirect_to pods_url, notice: 'Pod was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_pod
      @pod = Pod.find(params[:id])
    end

    def pod_params
      params.require(:pod).permit(:zipcode, :pod_name, :search, :description, image_attributes:[:avatar])
    end
end
