class Artist < ApplicationRecord
  has_many :albums,
    class_name: 'Album',
    foreign_key: :artist_id,
    primary_key: :id

  def n_plus_one_tracks
    albums = self.albums
    tracks_count = {}
    albums.each do |album|
      tracks_count[album.title] = album.tracks.length
    end

    tracks_count
  end

  def better_tracks_query
    # TODO: your code here

    albums_with_count = self
    .albums
    .select("albums.*, COUNT(*) AS albums_count")
    .joins(:tracks)
    .group("artists.id")

    albums_with_count.map do |album|
      [album.title, album.albums_count]
    end
  end
end
