class MurmursController < ApplicationController
  before_action :set_murmur, only: [:edit, :update, :destroy]
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
  end

  def update
    if @murmur.update(murmur_params)
      redirect_to murmurs_path, notice: "つぶやきを編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @murmur.destroy
    redirect_to murmurs_path, notice: "ブログを削除しました！"
  end

  def confirm
    @murmur = Murmur.new(murmur_params)
  end

  private
  def murmur_params
    params.require(:murmur).permit(:content)
  end

  def set_murmur
    @murmur = Murmur.find(params[:id])
  end

end
