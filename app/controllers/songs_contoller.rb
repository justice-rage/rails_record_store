class SongsController < ApplicationController
    def new
      @album = Album.find(params[:album_id])
      @song = @album.songs.new
      render :new
    end

    def create
        @album = Album.find(params[:album_id])
        @song = @album.songs.new(song_params)
        if @song.save
          redirect_to album_path(@album)
        else
          render :new
        end
      end
        
    private
        def song_params
          params.require(:song).permit(:name, :lyrics)
        end
end