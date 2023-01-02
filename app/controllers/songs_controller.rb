class SongsController < ApplicationController
  def create
    @pack = Pack.find(params[:pack_id])
    @song = @pack.songs.create(song_params)
    redirect_to pack_path(@pack)
  end

  private
    def song_params
      params.require(:song).permit(:title, :artist, :bpm, :length, :stepartist, :novice, :easy, :medium, :hard, :expert, :edit)
    end
end
