class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @artist = Artist.new(nil)
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def artist
    @artist
  end

  def artist_name
    self.artist.name
  end

end
