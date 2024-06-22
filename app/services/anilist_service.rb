class AniListService
  include HTTParty
  base_uri 'https://graphql.anilist.co'

  def fetch_light_novels
    query = <<-GRAPHQL
    {
      Media(type: NOVEL, sort: POPULARITY_DESC) {
        id
        title {
          romaji
        }
        description
        volumes
        averageScore
        coverImage {
          large
        }
      }
    }
    GRAPHQL

    self.class.post('', body: { query: query }.to_json, headers: { 'Content-Type' => 'application/json' })
  end
end
