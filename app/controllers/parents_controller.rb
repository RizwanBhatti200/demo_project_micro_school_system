class ParentsController < ApplicationController

  before_action :set_parent, only: %i[show edit update destroy]

  def show; end

  private


  def set_parent
    @parent = Parent.find(params[:id])
  end

  def parent_params
    params.require(:parent).permit(:email)
  end
end