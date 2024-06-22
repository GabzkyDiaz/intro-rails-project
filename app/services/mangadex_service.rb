class MangaDexService
  include HTTParty
  base_uri 'https://api.mangadex.org'

  def fetch_manga
    self.class.get('/manga')
  end
end
