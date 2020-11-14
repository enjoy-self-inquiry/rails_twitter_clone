class MurmursController < ApplicationController
  def index
  end
  def new
    @murmur = Murmur.new
  end
  def create
    Murmur.create(murmur_params)
    redirect_to new_murmur_path
  end
  private
  def murmur_params
    params.require(:murmur).permit(:content)
  end
end
