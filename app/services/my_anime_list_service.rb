class MyAnimeListService
  include HTTParty
  base_uri 'https://api.jikan.moe/v3'

  def fetch_anime
    self.class.get('/top/anime/1/bypopularity')
  end
end
