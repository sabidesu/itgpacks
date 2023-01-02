class SongsController < ApplicationController
  def create
    @pack = Pack.find(params[:pack_id])
    @song = @pack.songs.create(song_params)
    redirect_to pack_path(@pack)
  end

  private
    def song_params
      params.require(:song).permit(:title, :artist, :bpm, :length, :stepartist, :single_novice, :single_easy, :single_medium, :single_hard, :single_expert, :single_edit, :double_novice, :double_easy, :double_medium, :double_hard, :double_expert, :double_edit)
    end
end
