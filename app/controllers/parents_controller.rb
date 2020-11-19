class ParentsController < ApplicationController
  before_action :authenticate_parent!
  before_action :set_parent, only: %i[show edit update destroy]

  def index
    @parents = Parent.all
  end
  

  def new
    @parent = Parent.new
    @parent.build_image
  end


  def show; end

  def edit
    @parent.build_image if @parent.image.blank?
  end

  def update
    respond_to do |format|
      if @parent.update(parent_params)
        format.html { redirect_to @parent, notice: 'Parent was successfully updated.' }
        format.json { render :show, status: :ok, location: @parent }
      else
        format.html { render :edit }
        format.json { render json: @parent.errors, status: :unprocessable_entity }
      end
    end
  end

  

  private


  def set_parent
    @parent = Parent.find(params[:id])
  end

  def parent_params
    params.require(:parent).permit(:email, image_attributes:[:avatar, :id] )
  end
end