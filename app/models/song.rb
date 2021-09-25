class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake

    
    drake = Artist.find_or_create_by(name: 'Drake') #finding or creating, then returning whichever comes first 
    self.artist = drake #setting the artist (including artist_id of song) to that found or created artist


    # Drake doesn't exist in the database as an artist yet, so you'll have to create a record
    # Hint: you won't want to create an artist record every time this method is called, only if an Drake is *not found*

  end
end