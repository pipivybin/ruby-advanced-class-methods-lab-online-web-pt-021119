class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def create(new_song)
    song = Song.new
    song.name = new_song
    song
  end

  def new_by_name
    
  end



  

end
