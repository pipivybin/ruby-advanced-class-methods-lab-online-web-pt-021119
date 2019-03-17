class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    self.all << song
    song
  end

  def self.new_by_name(name)
    song_new = self.new
    song_new.name = name
    song_new
  end

  def self.create_by_name(name)
    song_new = self.new_by_name(name)
    song_new.save
    song_new
  end

  def self.find_by_name(name)
      if self.all.find { |x| x.name == name } == nil
        false
      else self.all.find { |x| x.name == name }
  end
end

  def self.find_or_create_by_name(name)
    if self.find_by_name(name) == nil
      self.create_by_name(name)
    else self.find_by_name(name)
    end
  end


end
