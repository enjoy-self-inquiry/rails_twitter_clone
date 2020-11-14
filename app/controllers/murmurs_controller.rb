class MurmursController < ApplicationController
  def index
    @murmurs = Murmur.all
  end
  def new
    @murmur = Murmur.new
  end
  def create
    @murmur = Murmur.create(murmur_params)
    if @murmur.save
      redirect_to new_murmur_path, notice: "つぶやきを投稿しました！"
    else
      render :new
    end
  end
  private
  def murmur_params
    params.require(:murmur).permit(:content)
  end
end
