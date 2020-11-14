class MurmursController < ApplicationController
  before_action :set_murmur, only: [:edit, :update]
  def index
    @murmurs = Murmur.all
  end

  def new
    @murmur = Murmur.new
  end

  def create
    @murmur = Murmur.create(murmur_params)
    if @murmur.save
      redirect_to murmurs_path, notice: "つぶやきを投稿しました！"
    else
      render :new
    end
  end

  def edit
    @murmur = Murmur.find(params[:id])
  end

  def update
    @murmur = Murmur.find(params[:id])
    if @murmur.update(murmur_params)
      redirect_to murmurs_path, notice: "つぶやきを編集しました！"
    else
      render :edit
    end
  end

  private
  def murmur_params
    params.require(:murmur).permit(:content)
  end

  def set_murmur
    @murmur = Murmur.find(params[:id])
  end

end
