class PacksController < ApplicationController
  def index
    @packs = Pack.all
  end

  def show
    @pack = Pack.find(params[:id])
  end

  def new
    @pack = Pack.new
  end

  def create
    @pack = Pack.new(pack_params)

    if @pack.save
      redirect_to @pack
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def pack_params
      params.require(:pack).permit(:title, :download_link, :songs, :stepartists, :minlvl_target, :maxlvl_target, :minlvl_total, :maxlvl_total, :bpm_min, :bpm_max, :difficulties_min, :difficulties_max, :play_type, :play_format, :ranked)
    end
end
