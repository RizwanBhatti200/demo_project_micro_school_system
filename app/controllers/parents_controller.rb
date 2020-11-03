class ParentsController < ApplicationController
  before_action :set_parent, only: %i[show edit update destroy]

  # GET /users
  # GET /users.json
  def index
    @parent = Parent.all
  end

  # GET /users/1
  # GET /users/1.json
  def show; end

  # GET /users/new
  def new
    @parent = Parent.new
  end

  # GET /users/1/edit
  def edit; end

  # POST /users
  # POST /users.json
  def create
    @parent = Parent.new(parent_params)

    respond_to do |format|
      if @parent.save

        format.html { redirect_to @parent, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @parent }
      else
        format.html { render :new }
        format.json { render json: @parent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @parent.update(parent_params)
        format.html { redirect_to @parent, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @parent }
      else
        format.html { render :edit }
        format.json { render json: @parent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @parent.destroy
    respond_to do |format|
      format.html { redirect_to parentss_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  #Use callbacks to share common setup or constraints between actions.
  def set_parent
    @parent = Parent.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def parent_params
    params.require(:parent).permit(:email)
  end
end

