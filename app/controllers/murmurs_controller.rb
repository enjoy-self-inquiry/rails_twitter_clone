class MurmursController < ApplicationController
  def index
  end
  def new
    @murmur = Murmur.new
  end
  def create
    Murmur.create(title: params[:murmur][:content])
    redirect_to new_murmur_path
  end
end
